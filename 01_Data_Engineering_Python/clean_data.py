import pandas as pd

#  Load Data
df = pd.read_csv('Telco_Cusomer_Churn.csv')

#  Cleaning - Fix the 'TotalCharges' data type bug
# 'coerce' turns spaces into NaN, which we then fill with 0
df['TotalCharges'] = pd.to_numeric(
    df['TotalCharges'], errors='coerce').fillna(0)

#  Split into the SQL Schema we designed
customers = df[['customerID', 'gender',
                'SeniorCitizen', 'Partner', 'Dependents']]

subscriptions = df[['customerID', 'tenure', 'Contract', 'PaperlessBilling',
                    'PaymentMethod', 'MonthlyCharges', 'TotalCharges', 'Churn']]

services = df[['customerID', 'PhoneService', 'MultipleLines', 'InternetService',
               'OnlineSecurity', 'OnlineBackup', 'DeviceProtection',
               'TechSupport', 'StreamingTV', 'StreamingMovies']]

#  Export for SQL Import
customers.to_csv('customers_table.csv', index=False)
subscriptions.to_csv('subscriptions_table.csv', index=False)
services.to_csv('services_table.csv', index=False)

print("Success! Your 3 clean tables are ready for MySQL.")
