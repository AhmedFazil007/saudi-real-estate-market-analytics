# Business Case, Insights & Recommendations

> **Simulation disclosure:** All 12,000 transactions are synthetic, dated 2021–2025. These findings demonstrate a decision-support workflow, **not real Saudi market trends or achieved business outcomes**. No actual revenue uplift, cost savings, investment returns, or marketing performance is claimed.

## Business question

**How could a hypothetical Saudi real-estate brokerage or investment research team prioritize market research, property coverage and financing partnerships using transaction-level analytics?**

**Stakeholders:** Brokerage strategy lead, property portfolio analyst, commercial manager and finance/reporting analyst.

**Decisions supported:** Which city/property segments deserve deeper investigation; how financing patterns could shape partnership tests; which changes in simulated transaction value reflect volume versus ticket size.

## Executive summary

- The synthetic dataset contains **12,000 transactions** and **SAR 12.46 billion** in transaction value across 10 cities and 4 property types.
- **Riyadh** has the largest simulated transaction value at **SAR 1.722 billion** (about **13.8%** of the total), with a weighted price of **SAR 5,071/sqm**. This is a research-priority signal, not evidence of real demand.
- **Villas** account for **SAR 4.666 billion**, about **37.4%** of total simulated transaction value, while representing **2,952 of 12,000 transactions** (24.6%). The segment has a median transaction price of **SAR 1,464,878**.
- Financing is relatively balanced: **cash 4,094 (34.1%)**, **mortgage 3,975 (33.1%)**, and **developer finance 3,931 (32.8%)** transactions. No financing channel dominates the synthetic sample.
- Annual transaction count is **2,337 in both 2021 and 2025**, yet annual transaction value rises from **SAR 2.232 billion** to **SAR 2.599 billion** (about **16.4%**). This suggests higher average transaction value within the simulated data, **not** growth in transaction volume.

## Quantified insights → decisions → KPIs

### 1. City segmentation: Riyadh leads on value and price intensity

**Finding:** Riyadh has SAR **1.722B** in simulated value, compared with **SAR 1.502B** for Jeddah and **SAR 1.469B** for Khobar. Riyadh's weighted price is **SAR 5,071/sqm**, compared with **SAR 4,441/sqm** in Jeddah and **SAR 4,558/sqm** in Khobar.

**Business implication:** A hypothetical brokerage should not use transaction count alone to prioritize high-ticket opportunities. City-level value and price intensity can lead to a different shortlist.

**Recommended action:** Run a *pilot research comparison* for Riyadh, Jeddah and Khobar, segmented further by property type and budget band before making any commercial commitment.

**KPI to monitor:** Qualified opportunities by city, conversion rate, median deal value, and value per square meter. These operating KPIs are **not measured by this dataset**.

### 2. Property mix: villas carry disproportionate value

**Finding:** Villas represent **24.6% of transactions** (2,952/12,000) but **37.4% of total transaction value** (SAR 4.666B/SAR 12.460B). Villa median price is **SAR 1.465M** versus **SAR 546K** for apartments.

**Business implication:** The highest-value segment is not necessarily the highest-volume segment. A single marketing approach could underserve different buyer budgets.

**Recommended action:** Test distinct hypothetical client journeys for villa buyers and apartment buyers, with segment-specific affordability and property-size filters.

**KPI to monitor:** Leads by property type, lead-to-viewing rate, conversion rate, average deal value and acquisition cost. The project does **not** contain these outcomes.

### 3. Financing: no single method dominates

**Finding:** Cash accounts for **34.1%** of synthetic transactions; mortgages **33.1%**; developer finance **32.8%**.

**Business implication:** Assuming most simulated buyers use one financing method would be misleading.

**Recommended action:** In a real deployment, test mortgage eligibility guidance, developer-financing information and cash-buyer experiences separately, then measure engagement.

**KPI to monitor:** Financing-qualified lead rate, approval rate, drop-off by financing method and closed-deal conversion. These measures require new operational data.

### 4. Trend decomposition: value grew while end-point volume did not

**Finding:** Annual synthetic transaction value rises approximately **16.4%** from 2021 to 2025, while transaction counts are **2,337 in both years**. Median transaction price rises from **SAR 833,855** to **SAR 977,761** (about **17.3%**).

**Business implication:** Reporting total transaction value without volume and median price can obscure what changed.

**Recommended action:** Include transaction count, median price, total value and weighted SAR/sqm together in monthly executive reporting. Investigate property mix and city mix before attributing changes to appreciation.

**KPI to monitor:** YoY transaction count, YoY total value, median transaction price and weighted price per sqm.

## How a company could use this dashboard

1. **Weekly:** Monitor city and property-type segments for unexpected changes.
2. **Monthly:** Review value, volume, median price and financing composition together.
3. **Quarterly:** Use observed real-world data to validate which segments deserve sales, research or partnership resources.
4. **After a pilot:** Compare actual operational KPIs against a defined baseline; only then quantify realized business impact.

## What business impact can be claimed?

**Supported:** Built a reproducible decision-support case study with SQL, Python and Power BI; analyzed 12,000 synthetic transactions; surfaced simulated city, property and financing patterns; proposed KPIs and actions.

**Not supported:** Generated revenue, improved profitability, increased lead conversion, reduced costs, predicted actual Saudi property prices, or changed a company's strategy.

## Methodology and caveats

- **Source:** Synthetic CSV in `data/04_real_estate_transactions_synthetic.csv`.
- **Validation:** Saved `analysis/quality_and_kpis.json` reports 12,000 unique IDs, zero missing values, zero duplicate rows and no zero/negative transaction prices or areas.
- **Measures:** Weighted SAR/sqm = total transaction value / total transacted area; financing share = method transaction count / all transactions.
- **Limitations:** Synthetic sampling may not represent Saudi market size, geography, affordability, seasonality, financing prevalence or causality. Segment comparisons are descriptive, not recommendations to invest.
- **Power BI QA:** Validate rendering, filter interactions and refresh in Power BI Desktop before claiming a fully tested interactive dashboard.

## Recruiter-ready project description

**Saudi Real Estate Market Analytics | Power BI, SQL & Python**

Developed a five-page analytics dashboard and reproducible analysis workflow for 12,000 synthetic real-estate transactions across 10 Saudi cities. Built transaction-value, median-price, weighted price-per-square-meter and financing-mix analyses; translated quantified findings into hypothetical market-research priorities and measurable business KPIs. Clearly distinguished simulated findings from real-world business outcomes.
