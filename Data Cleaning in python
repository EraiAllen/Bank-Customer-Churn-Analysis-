import pandas as pd
import numpy as np



df=pd.read_csv(r"data/Churn_Modelling.csv")

print("=" * 50)
print("BANK CUSTOMER CHURN DATASET")
print("=" * 50)

print("\n1. First 5 Rows")
print("-" * 50)
print(df.head())
print("\n2. Dataset Shape")
print("-" * 50)
print(df.shape)
print("\n3. Dataset Information")
print("-" * 50)
print(df.info())
print("\n4. Missing Values")
print("-" * 50)
print(df.isnull().sum())
print("\n5. Duplicate Rows")
print("-" * 50)
print(df.duplicated().sum())

print("\n6. Rename Columns")
print("-" * 50)
print(df.rename(columns={"HasCrCard":'Has Credit Card',"IsActiveMember":'ActiveMember'},inplace=True))

print("\n7. Drop Columns")
print("-" * 50)
df.drop(["RowNumber", "Surname"],axis=1,inplace=True)

print("\n8. Unique Age Values")
print("-" * 50)
print([int(age) for age in sorted(df['Age'].unique())])

print("\n9. Age Group")
print("-" * 50)
df["AgeGroup"] = pd.cut(
    df["Age"],
    bins=[18,30,45,60,80,100],
    labels=["18-30","31-45","46-60","60-80","80+"]
)
print(df["AgeGroup"])

print("\n10. Unique Tenure Values")
print("-" * 50)
print([int(Tenure) for Tenure in sorted(df["Tenure"].unique())])

print("\n11. Tenure Group")
print("-" * 50)
df["TenureGroup"] = pd.cut(
    df["Tenure"],
    bins=[0,3,6,10],
    labels=["0 to 3 Years","3 to 6 Years","6 to 10 Years"]
)
print(df["TenureGroup"])

print("\n12. Balance Status")
print("-" * 50)
df["Balance"]=np.where(df["Balance"]==0,"Zero Balance","Has Balance")
print(df["Balance"])

print("\n13. Gender Distribution")
print("-" * 50)
print(df["Gender"].value_counts())
print("\n14. Geography Distribution")
print("-" * 50)
print(df["Geography"].value_counts())
print("\n15. Customer Churn")
print("-" * 50)
print(df["Exited"].value_counts())


print("\n16. Gender Correction")
print("-" * 50)
df["Gender"] = df["Gender"].str.title()
print(df["Gender"])

print("\n  BANK CUSTOMER CHURN CLEANED DATASET")
print("=" * 50)
print(df.info())

df.to_csv("cleaned_customers.csv", index=False)
