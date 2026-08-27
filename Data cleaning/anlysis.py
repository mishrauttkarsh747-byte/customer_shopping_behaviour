import pandas as pd 
df = pd.read_csv(r"customer_shopping_behavior.csv")
print((df).head(10))

print(df.info())
print(df.describe())
#print(df.isnull().sum())
print("Duplicate rows:", df.duplicated().sum())
df = df.drop_duplicates()
df = df.fillna(df.median(numeric_only=True))
print(df.isnull().sum())
df.columns = df.columns.str.lower()
df.columns = df.columns.str.replace(' ', '_')


print(df.columns) 
df = df.rename(columns={'purchase_amount_(usd)': 'purchase_amount'})
print(df.columns)
labels=['young adult','adult','middle aged','senior']
df['age_group']=pd.qcut(df['age'],q=4,labels=labels )
print(df[['age','age_group']].head(19))
print(df['frequency_of_purchases'].unique())
df['frequency_of_purchases'] = (
    df['frequency_of_purchases']
    .str.lower()
    .str.strip()
)
frequency_mapping = {
    'fortnightly': 14,
    'weekly': 7,
    'monthly': 30,
    'quarterly': 90,
    'bi-weekly': 14,
    'annually': 365,
    'every 3 months': 90
}

df['frequency_purchase_days'] = df['frequency_of_purchases'].map(frequency_mapping)

print(df[['frequency_of_purchases', 'frequency_purchase_days']])    
df=df.drop('promo_code_used', axis=1)
print(df.columns)
df.to_csv("ecommerce.csv", index=False)
print("File updated successfully!")
df=df.isnull().sum()
print(df)
