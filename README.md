# UCI Online Retail Analysis & Data Engineering

An end-to-end data analysis project exploring transaction dynamics, customer behavior, and return patterns using the UCI Online Retail dataset.

## Phase 1: Excel Baseline & Methodology
Before jumping into complex tools, this project started in Excel to establish a rigorous baseline. Rather than simply aggregating the raw data, the dataset was carefully segmented to ensure accurate metrics:

1. **Data Segmentation:** Standard transactions (sales) were separated from cancelled orders (invoices starting with 'C'). 
2. **Revenue Calculation:** Net Revenue was calculated strictly from valid, completed sales to avoid skewing the primary growth metrics.
3. **Return Analysis:** Cancelled orders were isolated and analyzed independently to understand the specific drivers behind financial losses.

### Key Findings
By treating returns as a separate analytical problem, several insights emerged:
- **Net Revenue (Valid Sales):** ~£8.47 Million
- **Total Return Loss (Cancellations):** -£471,000
- **Geographic Concentration:** 93.34% of total return losses stem from the UK market.
- **B2B Return Anomaly:** Return losses are overwhelmingly driven by wholesale cancellations rather than individual retail customer behavior. The top 2 B2B customer accounts alone account for over **52%** of total return losses.
- **Seasonal Spikes:** Significant return surges occur during Q4 and January following holiday purchasing peaks.

---

## Repository Structure
uci-retail-analysis/
├── Data/
│   ├── Online_Retail_Raw.csv
│   └── Online_Retail_Clean.csv
└── using-excel/
    └── UCI-Retail-Analysis.xlsx

---

## Data Source & Acknowledgements
The dataset used in this project is sourced from the [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/352/online+retail). 

*Note: I do not claim ownership of this dataset. The data is the intellectual property of its respective owners and creators, and is used here strictly for educational and portfolio demonstration purposes.*

---

## Project Roadmap
- [x] **Phase 1: Excel Baseline** – Data cleaning, segmentation, valid/cancelled split, and baseline metric calculation.
- [ ] **Phase 2: Database Engineering (PostgreSQL)** – Relational schema design, normalization, bulk data loading, and SQL analytical queries.
- [ ] **Phase 3: Exploratory Data Analysis & Python API** – Data pipeline, RFM customer segmentation, statistical analysis (Pandas/NumPy), and API integration.
- [ ] **Phase 4: BI Dashboard & Final Documentation** – Interactive dashboard visualization.
