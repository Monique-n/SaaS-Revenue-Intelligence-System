# SaaS Revenue & Risk Intelligence System (FY26)
![Dashboard Preview](Dashboard_Preview.png)

## 🎯 Business Problem
A subscription-based software company faced fluctuating revenue and lacked visibility into churn drivers. I developed this end-to-end BI system to transition the company from "reactive" data viewing to "proactive" risk management.

## 🛠️ The Tech Stack & Workflow
* **Python (Pandas):** ETL process to clean raw data and fix data type inconsistencies (e.g., converting TotalCharges strings to numeric).
* **MySQL:** Architected a relational Star Schema, splitting flat data into `Customers`, `Subscriptions`, and `Services` tables to ensure data integrity.
* **SQL Analysis:** Developed complex queries to calculate MRR, ARPU, and Churn Rate % by contract type.
* **Power BI:** Built an executive-grade dashboard with interactive cross-filtering to visualize "Revenue at Risk."

## 📊 Key Business Insights
* **Contract Risk:** Month-to-month contracts exhibit a **42.7% churn rate**, nearly 4x higher than one-year plans.
* **Revenue at Risk:** Identified high-value segments (Fiber Optic users) that carry the highest financial risk due to contract structure.
* **Growth Opportunity:** Two-year contracts show the highest stability (2.8% churn), suggesting a massive opportunity for "Term Conversion" campaigns.

## 🚀 Strategic Recommendations
1. **Term Conversion Incentives:** Offer a 10-15% discount for users transitioning from Month-to-Month to Annual plans.
2. **Onboarding Focus:** Since early tenure correlates with higher churn, implement a "High-Touch" onboarding sequence for the first 90 days.
3. **Retention Targeting:** Use the "Revenue at Risk" logic to prioritize customer success outreach to the $316K Fiber Optic segment.

