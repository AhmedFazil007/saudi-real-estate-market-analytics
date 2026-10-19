# Executive Insights | Power BI Page Specification

I would use this as the final page of the five-page dashboard: a short summary of the findings and the decisions they could support. All figures below are from **synthetic transactions**.

## Suggested page title
**Executive Insights & Business Decisions**

### Headline cards
- Total simulated value: **SAR 12.46B**
- Transactions: **12,000**
- Median transaction price: **SAR 912,309**
- Cities covered: **10**

### Four insight cards

**City priority — Riyadh:** SAR 1.722B in transaction value (13.8% of total). Compare with Jeddah and Khobar by property type before prioritizing research.

**Property mix — Villas:** 24.6% of transactions, 37.4% of value. Review high-value and high-volume segments separately.

**Financing — Balanced mix:** Cash 34.1%, mortgage 33.1%, developer finance 32.8%. Avoid assuming one method dominates.

**Trends — Value vs volume:** Value is 16.4% higher in 2025 than in 2021, while both years contain 2,337 transactions. Examine median price and mix before drawing conclusions.

## Recommended visual layout
- Top: title, synthetic-data subtitle and four KPI cards.
- Middle: three horizontal insight panels for city, property and financing.
- Bottom: value-versus-volume insight, recommendations and limitations.
- Keep slicers clearly labelled; static insight text describes the **full dataset**, so it should not be presented as changing with slicers.

## Useful DAX measures

These are examples to adapt to the actual model's table and column names; they have **not been imported or tested** in Power BI Desktop.

```dax
Transaction Count = COUNTROWS('transactions')

Total Value SAR = SUM('transactions'[transaction_price_sar])

Median Transaction Price SAR = MEDIAN('transactions'[transaction_price_sar])

Weighted Price Per Sqm SAR =
DIVIDE(
    SUM('transactions'[transaction_price_sar]),
    SUM('transactions'[area_sqm])
)

Mortgage Transaction Share =
DIVIDE(
    CALCULATE(
        [Transaction Count],
        'transactions'[financing_method] = "Mortgage"
    ),
    [Transaction Count]
)
```

## QA before presenting
- Open both PBIX and PBIP in Power BI Desktop.
- Check that filters change the KPI cards and charts as intended.
- Confirm the model table names before pasting DAX.
- Refresh data and reconcile headline values with `analysis/quality_and_kpis.json`.
- Keep the synthetic-data label visible.

This page specification is ready to implement in Power BI; it is **not a claim that the PBIX was edited or tested**.
