# SAM Project with REST API and Bedrock Agent Lambda Functions
This is a sample project of implement a training center chatbot asistant using Amazon Bedrock, Pinecone and React JS.
![borislam.com](https://blog.bbsteps.net/blogimg/bedrock-kb-agent.jpg)

[Detail Instructions for this tuturial: PART 1](https://www.borislam.com/2025/01/bedrock-rag-pinecone.html)

[Detail Instructions for this tuturial: PART 2](https://www.borislam.com/2025/01/bedrock-react-lambda.html)



This project contains two AWS Lambda functions deployed through AWS SAM:
1. A REST API Lambda function
2. A Bedrock Agent Lambda function

Both functions are accessible through a single API Gateway.

## Project Structure
```
.
├── README.md
├── template.yaml
└── src
    ├── rest_api
    │   ├── app.py
    │   └── requirements.txt
    └── bedrock_agent
        ├── app.py
        └── requirements.txt
```

## Deployment Instructions

1. Build the SAM application:
```bash
sam build
```

2. Deploy the application:
```bash
sam deploy --guided
```

## API Endpoints

- REST API: `https://{api-id}.execute-api.{region}.amazonaws.com/dev/api`
- Bedrock Agent: `https://{api-id}.execute-api.{region}.amazonaws.com/dev/agent`
