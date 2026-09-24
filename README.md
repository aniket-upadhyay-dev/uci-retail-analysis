# UCI Online Retail Analysis

An end-to-end data analysis project exploring transaction patterns, sales performance, customer behavior, and cancellation patterns using the UCI Online Retail dataset.

## Phase 1: Excel Baseline & Initial Analysis

Initial data cleaning, transaction segmentation, and baseline metric calculations were performed in Excel.

### Methodology

1. **Transaction Segmentation:**  
   Completed sales were separated from cancelled transactions, with cancellations identified using invoices beginning with `C`.

2. **Valid Sales Revenue:**  
   Sales revenue was calculated using completed sales while excluding cancelled transactions.

3. **Cancellation Analysis:**  
   Cancelled transactions were isolated and analyzed independently to examine cancelled sales value and customer, product, and geographic patterns.

### Key Findings

- **Valid Sales Revenue:** ~£8.47 million
- **Cancelled Sales Value:** ~£471,000
- **Geographic Distribution:** 93.34% of total cancelled sales value came from the UK.
- **Customer Concentration:** Cancelled sales value was highly concentrated among a small number of high-volume customer accounts. The top 2 accounts accounted for over 52% of total cancelled sales value.
- **Temporal Pattern:** Higher cancellation values were observed in Q4 2011, particularly December, and in January 2011.

### Excel Dashboard

The Excel analysis includes:
- Valid sales revenue
- Total orders
- Average order value
- Top products by revenue
- Revenue by country
- Monthly sales trends
- Customer revenue analysis
- Cancellation analysis
- Year and quarter filtering

---

## Repository Structure

```text
uci-retail-analysis/
├── Data/
│   ├── Online_Retail_Raw.csv
│   └── Online_Retail_Clean.csv
│
└── using-excel/
    └── UCI-Retail-Analysis.xlsx
```

---

## Data Source & Acknowledgements
The dataset used in this project is sourced from the [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/352/online+retail).

*Note: I do not claim ownership of the original dataset. It is used here strictly for educational and portfolio demonstration purposes.*

---

## Project Roadmap
- [x] **Phase 1: Excel Baseline & Initial Analysis**
  - Data cleaning
  - Transaction segmentation
  - Completed/cancelled transaction separation
  - Revenue analysis
  - Cancellation analysis
  - Excel dashboard
- [ ] **Phase 2: PostgreSQL & SQL Analysis**
  - Relational schema design
  - Data loading
  - Table relationships and JOINs
  - Aggregations and CTEs
  - Window functions
  - Analytical queries
- [ ] **Phase 3: Python Exploratory Analysis**
  - Pandas/NumPy analysis
  - RFM customer analysis
  - Customer segmentation
  - Statistical analysis
- [ ] **Phase 4: BI Dashboard & Final Documentation**
  - Power BI data modelling
  - Interactive dashboard
  - Final analysis and documentation