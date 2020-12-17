import json
import boto3

def handler(event, context):
    usuario = event['pathParameters']['usuario'];
    
    sqs = boto3.resource('sqs')
    
    queue = sqs.get_queue_by_name(QueueName='fiap-lab-trabalho-final-principal-dev')
    response = queue.send_message(MessageBody=usuario)
    
    print(response.get('MessageId'))
    print(response.get('MD5OfMessageBody'))
    
    body = {
        "message": "O usuario enviado foi: " + str(usuario)
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }

    return response