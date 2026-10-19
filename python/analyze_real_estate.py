"""Rebuild grouped outputs from the supplied synthetic real estate dataset.
Requires: pandas. Run from anywhere with python python/analyze_real_estate.py.
"""
from pathlib import Path
import pandas as pd
ROOT=Path(__file__).resolve().parents[1]
df=pd.read_csv(ROOT/'data'/'04_real_estate_transactions_synthetic.csv',parse_dates=['transaction_date'])
df['year']=df.transaction_date.dt.year
df['month']=df.transaction_date.dt.to_period('M').astype(str)
assert df.transaction_id.is_unique, 'Duplicate transaction IDs'
assert df.notna().all().all(), 'Missing fields'
assert (df.area_sqm>0).all() and (df.transaction_price_sar>0).all()
print('Rows:',len(df),'Value SAR:',round(df.transaction_price_sar.sum(),2))
for name,cols in [('annual',['year']),('monthly',['month']),('city',['city']),('property_type',['property_type']),('financing',['financing_method']),('city_property_type',['city','property_type'])]:
 a=df.groupby(cols).agg(transactions=('transaction_id','size'),total_value_sar=('transaction_price_sar','sum'),median_price_sar=('transaction_price_sar','median'),total_area_sqm=('area_sqm','sum')).reset_index()
 a['weighted_price_per_sqm_sar']=a.total_value_sar/a.total_area_sqm
 a.to_csv(ROOT/'analysis'/f'{name}_summary.csv',index=False,float_format='%.2f')
print('Analysis outputs refreshed.')
