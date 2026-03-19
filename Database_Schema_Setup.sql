
create table customers(
customerID varchar(50) PRIMARY KEY,
gender varchar (10),
SeniorCitizen INT,
Partner varchar(5),
Dependents varchar(5)
);
create table subscriptions(
customerID varchar (50),
tenure INT,
Contract VARCHAR(50),
PaperlessBilling VARCHAR(5),
PaymentMethod VARCHAR(50),
MonthlyCharges FLOAT,
TotalCharges FLOAT, 
Churn VARCHAR(5),
FOREIGN KEY (customerID) REFERENCES Customers(customerID)
);
CREATE TABLE Services (
    customerID VARCHAR(50),
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(20),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(20),
    TechSupport VARCHAR(20),
    FOREIGN KEY (customerID) REFERENCES Customers(customerID)
);

