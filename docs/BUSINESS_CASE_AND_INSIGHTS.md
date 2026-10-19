# Business Case and Key Insights

## The question behind the project

I approached this as a simple business problem: **If a property team had transaction-level data, how could it decide where to focus its research and what to track?**

A brokerage, portfolio analyst or commercial manager might want to compare cities, understand which property types contribute the most value, or see how financing methods vary. A dashboard can help with those questions—but only if the numbers lead to useful decisions.

I worked with **12,000 synthetic transactions from 2021 to 2025**. Everything below describes that simulated dataset, not real Saudi property-market performance.

## Four findings worth discussing

### 1. Riyadh stands out on transaction value

Riyadh contributes **SAR 1.722B** in simulated transaction value, compared with **SAR 1.502B** for Jeddah and **SAR 1.469B** for Khobar. Its weighted price per square metre is about **SAR 5,071**, compared with **SAR 4,441** in Jeddah and **SAR 4,558** in Khobar.

**What I'd do with this:** Compare these cities by property type and budget range before deciding where to investigate further. A higher value doesn't automatically mean a better investment or stronger demand.

**What I'd track in a real business:** Qualified leads by city, conversion rates, deal size and price per square metre.

### 2. Villas contribute more value than their transaction share suggests

Villas represent **2,952 transactions (24.6%)** but contribute **SAR 4.666B (37.4%)** of simulated transaction value. The median villa price is about **SAR 1.465M**, compared with **SAR 546K** for apartments.

**What I'd do with this:** Separate high-ticket property analysis from high-volume property analysis. If this were real brokerage data, I'd test different buyer journeys for villas and apartments rather than treating them as one audience.

**What I'd track:** Enquiries, viewing-to-sale conversion, acquisition cost and completed deal value by property type.

### 3. Financing methods are fairly evenly represented

The synthetic data contains **4,094 cash transactions (34.1%)**, **3,975 mortgage transactions (33.1%)** and **3,931 developer-financed transactions (32.8%)**.

**What I'd do with this:** Look into whether buyers using different financing methods need different information or support. I wouldn't assume one method is dominant based on these results.

**What I'd track:** Financing-qualified leads, approvals, drop-offs and closed deals.

### 4. Transaction value and transaction volume tell different stories

The simulated annual transaction value goes from **SAR 2.232B in 2021** to **SAR 2.599B in 2025**, an increase of roughly **16.4%**. But both years have exactly **2,337 transactions**. The median price also rises from **SAR 833,855** to **SAR 977,761**.

**What I'd do with this:** Put transaction count, total value, median price and price per square metre side by side in monthly reporting. I'd also check changes in city and property mix before interpreting the movement.

**What I'd track:** Year-over-year value, transaction count, median price and weighted price per square metre.

## Turning insights into decisions

The main lesson for me was that **a chart isn't the end of the analysis**. It should lead to a question, a possible action and a way to tell whether that action worked.

In a real organization, I'd use a dashboard like this to support monthly reviews, shortlist segments for deeper research and define measurable pilot projects. Actual impact would only be clear after comparing real operational results against a baseline.

I haven't claimed increased revenue, better conversion or reduced costs because this project doesn't include evidence for those outcomes.

## How the numbers were calculated

- **Total transaction value:** Sum of transaction prices.
- **Median transaction price:** Middle transaction price after sorting.
- **Weighted price per sqm:** Total transaction value divided by total transacted area.
- **Financing share:** Transactions in a financing category divided by all transactions.
- **Year-over-year value change:** Current year's value divided by the previous year's value, minus one.

The data-quality output in [analysis/quality_and_kpis.json](../analysis/quality_and_kpis.json) reports **12,000 unique IDs**, **zero missing values**, **zero duplicate rows** and no zero or negative prices or areas.

## Limits of the project

The data is synthetic, so the city rankings, financing proportions and changes over time aren't estimates of the real Saudi market. They are useful for showing a workflow: checking data, building measures, comparing segments and connecting findings to business questions.

The Power BI files are included in the repository. I recommend checking report rendering, slicers and refresh in Power BI Desktop before reusing or presenting the dashboard.
