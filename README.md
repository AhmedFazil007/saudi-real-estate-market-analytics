# Saudi Real Estate Market Analytics

**Power BI portfolio case study | 12,000 synthetic transactions | Saudi Arabia**

> **Data disclosure:** All transactions are simulated. Findings are not official Saudi real-estate statistics, and no business impact is claimed.

## Project overview

A multi-page property-market dashboard examining transaction values, median sale prices, price per square meter, property types, city-level performance, financing mix and monthly trends.

### Key indicators

| Indicator | Result |
|---|---:|
| Transactions | 12,000 |
| Total transaction value | Approximately SAR 12.46 billion |
| Median transaction price | Approximately SAR 912,309 |
| Cities | 10 |

## Power BI dashboard

The **1920 × 1080** Power BI project contains five report pages:

1. Market Overview
2. Property Type & Pricing
3. Regional Performance
4. Financing Analysis
5. Monthly Market Trends

The report uses an olive-green visual theme, KPI strip, analytical charts, and filter slicers. The editable Power BI Project (.pbip) includes the semantic model and report definitions. A standalone .pbix is also intended for easy viewing.

## Analysis methodology

- **Python:** Data quality checks and reproducible transaction summaries
- **SQL:** Aggregation by city, property type, financing method and time
- **Power BI / DAX:** Transaction counts, sale values, median prices, weighted price per square meter, mortgage share and year-over-year comparisons
- **Documentation:** Dataset limitations, metric definitions, and validation checklist

## Intended repository structure

```text
saudi-real-estate-market-analytics/
├── README.md
├── data/
│   └── 04_real_estate_transactions_synthetic.csv
├── powerbi/
│   ├── Saudi_Real_Estate_Analytics.pbix
│   ├── Saudi_Real_Estate_Analytics.pbip
│   ├── Saudi_Real_Estate_Analytics.Report/
│   └── Saudi_Real_Estate_Analytics.SemanticModel/
├── python/
│   └── analyze_real_estate.py
├── sql/
│   └── real_estate_analysis.sql
├── analysis/
│   └── (generated summaries)
└── docs/
    └── (Power BI opening guide and submission checklist)
```

**Upload status:** The source project files and the final PBIX still need to be uploaded. The above structure describes the intended completed repository, not files already present.

## Important limitations

- The dataset is synthetic, not actual Saudi property transaction data.
- Comparisons describe simulated patterns, not real market trends.
- The generated PBIP was checked for layout geometry, but final Power BI Desktop rendering and refresh must be validated before public claims about report functionality.

## Author

[Ahmed Fazil](https://github.com/AhmedFazil007)
