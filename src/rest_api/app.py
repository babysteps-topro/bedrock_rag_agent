import json
import os
import boto3
import uuid
from typing import Dict, Any

bedrock_agent_runtime = boto3.client('bedrock-agent-runtime')

# Get from environment variables
AGENT_ID = "YOUR_AGENT_ID"
AGENT_ALIAS_ID = "YOUR_AGENT_ALIAS_ID"


def lambda_handler(event: Dict[str, Any], context) -> Dict[str, Any]:
    """
    Lambda handler for Bedrock Agent Runtime API
    """
    try:
        # Parse the request body
        body = {}
        if event.get('body'):
            body = json.loads(event.get('body', '{}'))
        
        return handle_agent_request(body)

    except Exception as e:
        return create_response(500, {'error': str(e)})

def handle_agent_request(body: Dict[str, Any]) -> Dict[str, Any]:
    """
    Handle requests to the Bedrock agent
    """
    try:
        # Validate input
        prompt = body.get('prompt')
        if not prompt:
            return create_response(400, {'error': 'Prompt is required'})

        # Get or create session ID
        session_id = body.get('session_id', str(uuid.uuid4()))

        # Validate environment variables
        if not AGENT_ID or not AGENT_ALIAS_ID:
            return create_response(500, {'error': 'Missing required environment variables'})

        # Invoke the Bedrock agent
        response = bedrock_agent_runtime.invoke_agent(
            agentId=AGENT_ID,
            agentAliasId=AGENT_ALIAS_ID,
            sessionId=session_id,
            inputText=prompt
        )

        # Process the response
        completion = ""
        for event in response.get("completion", []):
            chunk = event.get("chunk", {})
            if chunk:
                completion += chunk.get("bytes", b"").decode()

        return create_response(200, {
            'response': completion,
            'session_id': session_id
        })

    except bedrock_agent_runtime.exceptions.ValidationException as e:
        return create_response(400, {'error': str(e)})
    except Exception as e:
        return create_response(500, {'error': str(e)})

def create_response(status_code: int, body: Dict[str, Any]) -> Dict[str, Any]:
    """
    Create a formatted API Gateway response
    """
    return {
        'statusCode': status_code,
        'headers': {
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Methods': 'OPTIONS,POST,GET'
        },
        'body': json.dumps(body)
    }
