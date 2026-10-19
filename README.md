# Saudi Real Estate Market Analytics

**Power BI • Python • SQL | Portfolio case study | 12,000 synthetic transactions**

> **Data disclosure:** The transaction data is simulated. Dashboard findings are illustrative and are **not official Saudi real-estate market statistics**.

## Project overview

This project analyzes a synthetic dataset of Saudi real estate transactions by city, property type, financing method and time. The Power BI dashboard includes five report pages:

1. Market Overview
2. Property Type & Pricing
3. Regional Performance
4. Financing Analysis
5. Monthly Market Trends

The report was designed at **1920 × 1080** with an olive-green theme, KPI cards, charts and filter slicers.

## Dashboard screenshots

The five screenshots below are organized in upload timestamp order. They show the Power BI dashboard pages.

![Dashboard screenshot 1](assets/screenshots/dashboard-page-01.png)

![Dashboard screenshot 2](assets/screenshots/dashboard-page-02.png)

![Dashboard screenshot 3](assets/screenshots/dashboard-page-03.png)

![Dashboard screenshot 4](assets/screenshots/dashboard-page-04.png)

![Dashboard screenshot 5](assets/screenshots/dashboard-page-05.png)

## Dataset and key indicators

- **12,000** synthetic transactions across **10** cities
- Approximately **SAR 12.46 billion** in simulated transaction value
- Approximately **SAR 912,309** median simulated transaction price

These figures describe the supplied simulated dataset only.

## Business problem and decision support

**Business question:** How could a hypothetical Saudi real-estate brokerage prioritize city research, property-segment coverage and financing partnerships using transaction-level analytics?

**Illustrative findings from synthetic data:**

| Insight | Quantified result | Decision it could inform |
|---|---|---|
| Riyadh leads on simulated transaction value | SAR **1.722B**, approximately **13.8%** of the dataset | Prioritize deeper city and property-type research |
| Villas contribute a disproportionate share of value | **24.6%** of transactions but **37.4%** of transaction value | Compare high-ticket and volume-oriented client strategies |
| Financing is relatively balanced | Cash **34.1%**, mortgage **33.1%**, developer finance **32.8%** | Test differentiated financing-related customer journeys |
| Value and volume tell different stories | 2021–2025 value **+16.4%**, but both years have **2,337** transactions | Report value, volume and median price together |

These are **simulated analytical findings**, not measured business outcomes. A real organization would need operational data and a pilot before claiming revenue, conversion or cost impact.

**[Read the full business case, quantified insights, recommendations and KPI framework](docs/BUSINESS_CASE_AND_INSIGHTS.md).**

## Repository files

| Path | Contents |
|---|---|
| [powerbi/Saudi_Real_Estate_Analytics.pbix](powerbi/Saudi_Real_Estate_Analytics.pbix) | Power BI Desktop report |
| [powerbi/Saudi_Real_Estate_Analytics.pbip](powerbi/Saudi_Real_Estate_Analytics.pbip) | Editable Power BI project entry point |
| [powerbi/Saudi_Real_Estate_Analytics.Report/](powerbi/Saudi_Real_Estate_Analytics.Report/) | Report definition, pages, visuals and theme |
| [data/](data/) | Synthetic source CSV |
| [analysis/](analysis/) | Saved CSV summaries, SQLite database and KPI quality output |
| [python/](python/) | Python analysis script |
| [sql/](sql/) | SQL queries |
| [docs/](docs/) | Business case, insights, recommendations and submission checklist |

**Repository status:** The PBIX, PBIP, report definition and semantic model are all uploaded. Local Power BI Desktop validation is still recommended.

## Reproduce the analysis

1. Install Python 3 and pandas: `pip install pandas`
2. From the repository root, run `python python/analyze_real_estate.py`.
3. Review the refreshed summary files under `analysis/`.
4. Open `powerbi/Saudi_Real_Estate_Analytics.pbix` in Power BI Desktop.
5. Open the `.pbip` file to edit the project structure.

The SQL examples use a table named `transactions`; the supplied `analysis/real_estate.sqlite` database is included for query exploration.

## Metric definitions

- **Total transaction value:** Sum of transaction prices.
- **Median transaction price:** Median of individual transaction prices.
- **Weighted price per sqm:** Total transaction value divided by total transacted area.
- **Mortgage share:** Mortgage-financed transactions divided by total transactions.
- **YoY change:** Current-year transaction value divided by previous-year value, minus one.

## Validation and limitations

The Power BI project definitions were structurally checked, but visual rendering, slicer behavior and data refresh were **not independently tested in Power BI Desktop**. The uploaded PBIX should be opened and checked before showcasing screenshots.

Synthetic data is useful for demonstrating analytics workflow and dashboard design; it does not establish actual Saudi market prices, growth rates or regional rankings.

## Author

[Ahmed Fazil](https://github.com/AhmedFazil007)
