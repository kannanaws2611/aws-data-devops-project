import pandas as pd
import boto3
from io import StringIO

# Create sample data
df = pd.DataFrame({"value": [10, 20, 30]})
print("Transformed Data:")
print(df)

# Upload to S3
s3_bucket = "enterprise-data-lake-demo"
s3_key = "etl/output.csv"  # path in bucket

# Convert DataFrame to CSV in memory
csv_buffer = StringIO()
df.to_csv(csv_buffer, index=False)

# Initialize S3 client
s3 = boto3.client("s3", region_name="ap-south-1")
s3.put_object(Bucket=s3_bucket, Key=s3_key, Body=csv_buffer.getvalue())

print(f"ETL output uploaded to s3://{s3_bucket}/{s3_key}")