import json

def lambda_handler(event, context):
    print("Running low-cost ETL job")
    data = {"status": "success"}
    return {
        "statusCode": 200,
        "body": json.dumps(data)
    }