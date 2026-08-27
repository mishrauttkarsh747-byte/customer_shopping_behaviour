# 🛍️ Customer Shopping Behavior Analysis

> **An end-to-end Data Analytics project analyzing 3,900+ customer transactions to uncover purchasing patterns, customer segments, product performance, discount effectiveness, and actionable business opportunities.**

---

## 📌 Project Overview

This project analyzes **customer shopping behavior** to understand how customers purchase products, which categories and products perform best, how subscriptions and discounts influence purchasing behavior, and where the business can improve its customer strategy.

The project follows a complete **data analytics workflow**:

**Raw Data → Data Cleaning → Exploratory Analysis → SQL Analysis → Business Insights → Recommendations**

The goal was not only to analyze the data, but to translate the analysis into **business problems, measurable results, and actionable recommendations**.

---

## 🎯 Business Objective

The main objective of this project is to answer important business questions such as:

* Which product categories generate the most revenue?
* Which products are most frequently purchased?
* Which customer segments contribute the most revenue?
* Do subscribers spend more than non-subscribers?
* Are discounts actually increasing customer spending?
* Which locations generate the highest sales?
* Which payment methods are most preferred?
* Which shipping methods are most commonly selected?
* How does purchase frequency relate to customer spending?
* Where are the biggest opportunities for improving customer retention and revenue?

---

## 📊 Dataset

The dataset contains customer-level shopping information, including:

| Feature                | Description                         |
| ---------------------- | ----------------------------------- |
| Customer ID            | Unique customer identifier          |
| Age                    | Customer age                        |
| Gender                 | Customer gender                     |
| Item Purchased         | Product purchased                   |
| Category               | Product category                    |
| Purchase Amount (USD)  | Transaction value                   |
| Location               | Customer location                   |
| Size                   | Product size                        |
| Color                  | Product color                       |
| Season                 | Purchase season                     |
| Review Rating          | Customer review rating              |
| Subscription Status    | Whether the customer is subscribed  |
| Shipping Type          | Shipping method selected            |
| Discount Applied       | Whether a discount was applied      |
| Promo Code Used        | Whether a promotional code was used |
| Previous Purchases     | Number of previous purchases        |
| Payment Method         | Payment method used                 |
| Frequency of Purchases | Customer purchase frequency         |

---

# 🧹 Data Cleaning & Preparation

Before performing the business analysis, the dataset was inspected and prepared for analysis using Python.

### Data cleaning steps included:

* Loading the raw dataset using Pandas
* Understanding the dataset structure
* Checking data types
* Checking missing values
* Checking duplicate records
* Identifying inconsistent values
* Validating categorical variables
* Reviewing numerical columns and distributions
* Performing exploratory data analysis
* Preparing the cleaned dataset for SQL analysis

### Tools used

**Python | Pandas | NumPy | Matplotlib | Seaborn**

---

# 🛢️ SQL Analysis

After preparing the dataset, the cleaned data was loaded into **SQL** for business analysis.

SQL was used to answer business-focused questions using:

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* Aggregate functions
* `CASE`
* Filtering and segmentation
* Revenue analysis
* Customer analysis
* Category analysis
* Subscription analysis
* Discount analysis

The SQL analysis converts raw transactional data into **business-ready insights**.

---

# 💼 Business Problems Analyzed

The project focuses on several key business areas:

### 1. Overall Business Performance

Analyzed total transactions, revenue, average purchase value, and customer performance.

### 2. Category Performance

Identified high-performing product categories and their contribution to revenue.

### 3. Product Performance

Analyzed which products attract the most purchases and generate the strongest sales.

### 4. Customer Segmentation

Compared customer behavior across demographic and purchasing segments.

### 5. Subscription Analysis

Compared subscribers and non-subscribers to identify opportunities for subscription growth.

### 6. Discount Effectiveness

Evaluated whether discounts actually increase average customer spending.

### 7. Payment Behavior

Identified the most frequently used payment methods.

### 8. Shipping Preferences

Analyzed customer preferences across different shipping options.

### 9. Geographic Performance

Compared purchasing behavior and revenue across locations.

### 10. Purchase Frequency

Analyzed how purchasing frequency relates to customer value.

---

# 🔍 Key Business Insights

### 💰 1. Discounts are not necessarily increasing basket value

Customers without discounts had an average purchase value of approximately **$60.13**, compared with approximately **$59.28** for customers who received discounts.

**Business Insight:**
Blanket discounting may not be increasing customer spending and could potentially reduce margins.

---

### 👥 2. Large opportunity to increase subscriptions

Approximately **73% of customers are non-subscribers**, while only around **27% are subscribers**.

**Business Insight:**
The large non-subscriber customer base represents a significant opportunity for subscription conversion and retention strategies.

---

### 💳 3. Customer purchasing behavior varies by payment method

The analysis identifies differences in payment-method usage across customers.

**Business Insight:**
Understanding payment preferences can help the business optimize checkout experiences and reduce friction during purchases.

---

### 🛍️ 4. Product categories have different revenue contributions

Some categories contribute significantly more revenue than others.

**Business Insight:**
Inventory planning and marketing efforts should prioritize high-performing categories while investigating why lower-performing categories underperform.

---

### ⭐ 5. Customer ratings provide an additional performance signal

Review ratings were analyzed alongside purchasing behavior.

**Business Insight:**
Combining customer satisfaction with sales performance can help identify products that are both commercially successful and well received by customers.

---

# 💡 Business Recommendations

| Finding                                                        | Business Impact                              | Recommendation                                                             |
| -------------------------------------------------------------- | -------------------------------------------- | -------------------------------------------------------------------------- |
| Discounts do not significantly increase average purchase value | Possible margin reduction                    | Replace blanket discounts with targeted offers                             |
| Large non-subscriber customer base                             | Subscription growth opportunity              | Create personalized subscription incentives                                |
| High-performing categories contribute more revenue             | Opportunity to optimize inventory            | Prioritize inventory and marketing for strong categories                   |
| Customer preferences differ by payment method                  | Checkout experience can affect conversion    | Optimize the most-used payment methods                                     |
| Product performance varies                                     | Resources may be allocated inefficiently     | Focus marketing on high-potential products                                 |
| Customer ratings vary across products                          | Poor experiences may affect repeat purchases | Investigate low-rated products and improve product/customer experience     |
| Purchase frequency differs across customers                    | Customer lifetime value varies               | Develop targeted retention campaigns for frequent and high-value customers |

---

# 📈 Business Impact

This analysis can help a retail business make more informed decisions around:

**Revenue Optimization**

Identify categories, products, and customer groups contributing the most value.

**Customer Retention**

Identify opportunities to convert and retain valuable customers.

**Subscription Growth**

Target the large non-subscriber customer base with personalized offers.

**Marketing Optimization**

Reduce ineffective blanket discounts and focus promotional spending on high-potential customers.

**Inventory Planning**

Use category and product performance to support better inventory decisions.

**Customer Experience**

Use payment, shipping, and rating data to improve the overall shopping journey.

---

# 🛠️ Tools & Technologies

| Tool            | Purpose                                 |
| --------------- | --------------------------------------- |
| 🐍 Python       | Data cleaning & exploratory analysis    |
| 🐼 Pandas       | Data manipulation                       |
| 🔢 NumPy        | Numerical analysis                      |
| 📊 Matplotlib   | Data visualization                      |
| 📈 Seaborn      | Exploratory visualization               |
| 🗄️ SQL / MySQL | Business analysis                       |
| 📗 Excel        | Data inspection & preparation           |
| 🐙 GitHub       | Version control & project documentation |

---

# 🔄 Project Workflow

```text
             RAW CUSTOMER DATA
                     │
                     ▼
              DATA CLEANING
               Python / Pandas
                     │
                     ▼
             EXPLORATORY ANALYSIS
                     │
                     ▼
               SQL DATABASE
                     │
                     ▼
             BUSINESS QUESTIONS
                     │
                     ▼
              KEY INSIGHTS
                     │
                     ▼
             RECOMMENDATIONS
                     │
                     ▼
             BUSINESS ACTIONS
```

---

# 🎯 Skills Demonstrated

This project demonstrates practical skills in:

* Data Cleaning
* Exploratory Data Analysis
* Data Quality Checking
* SQL
* Business Problem Solving
* Customer Segmentation
* Revenue Analysis
* KPI Analysis
* Data Visualization
* Business Intelligence
* Insight Generation
* Recommendation Development
* Data Storytelling

---

# 👨‍💻 About Me

**Uttkarsh Mishra**
CSE – Artificial Intelligence & Machine Learning

Aspiring **Data Analyst** interested in transforming raw data into meaningful business insights and data-driven decisions.

### Core Skills

**Python | SQL | Excel | Power BI | Data Analysis | Data Visualization | Business Analytics**

---

## ⭐ Project Goal

The goal of this project was to move beyond simply answering **"What happened?"**

and focus on:

> **What happened → Why does it matter → What should the business do next?**

This project demonstrates how raw customer data can be transformed into **actionable business intelligence**.

---

### 📬 Connect

If you found this project interesting, feel free to explore the analysis, SQL queries, and recommendations included in the repository.
