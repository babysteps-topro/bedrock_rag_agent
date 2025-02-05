import json
import boto3
client=boto3.client('dynamodb')

def lambda_handler(event, context):
    try:
        # print the event value to the cloudwatch logs
        print(event)
        class_code = event['parameters'][0]['value']

        # get the class code from the event
        ddb_response = client.get_item(TableName='course_status', 
                                   Key={'class_code': {'S': class_code}})
        
        # Initialize response components
        session_attributes = {}
        prompt_session_attributes = {}
        print(ddb_response)
        # Check if the item was found
        if 'Item' in ddb_response:
            course_status = ddb_response['Item']

            response_body = {
                'application/json': {
                    'body': json.dumps(ddb_response)
                }
            }
            action_response = {
                'actionGroup': event['actionGroup'],
                'apiPath': event['apiPath'],
                'httpMethod': event['httpMethod'],
                'httpStatusCode': 200,
                'responseBody': response_body
            }
        else:

            response_body = {
                'application/json': {
                    'body': f'No course found with class code: {class_code}'
                }
            }
            action_response = {
                'actionGroup': event['actionGroup'],
                'apiPath': event['apiPath'],
                'httpMethod': event['httpMethod'],
                'httpStatusCode': 404,
                'responseBody': response_body
            }

        return {
            'messageVersion': '1.0',
            'response': action_response,
            'sessionAttributes': session_attributes,
            'promptSessionAttributes': prompt_session_attributes
        }

    except KeyError as ke:
        print(f"KeyError: {str(ke)}")

        response_body = {
            'application/json': {
                'body': 'Invalid event structure or missing parameter'
            }
        }
        action_response = {
            'actionGroup': event['actionGroup'],
            'apiPath': event['apiPath'],
            'httpMethod': event['httpMethod'],
            'httpStatusCode': 400,
            'responseBody': response_body
        }
        return {
            'messageVersion': '1.0',
            'response': action_response,
            'sessionAttributes': session_attributes,
            'promptSessionAttributes': prompt_session_attributes
        }

    except Exception as e:
        print(f"Error: {str(e)}")

        response_body = {
            'application/json': {
                'body': 'An unexpected error occurred'
            }
        }
        action_response = {
            'actionGroup': event['actionGroup'],
            'apiPath': event['apiPath'],
            'httpMethod': event['httpMethod'],
            'httpStatusCode': 500,
            'responseBody': response_body
        }
        return {
            'messageVersion': '1.0',
            'response': action_response,
            'sessionAttributes': session_attributes,
            'promptSessionAttributes': prompt_session_attributes
        }
