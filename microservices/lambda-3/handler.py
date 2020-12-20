import sys
sys.path.insert(0, '/opt')

from env import Variables

from sqsHandler import SqsHandler
from snsHandler import SnsHandler

from aws_xray_sdk.core import xray_recorder
from aws_xray_sdk.core import patch_all

xray_recorder.configure(service='My app')
patch_all()

def handler(event, context):
    
    env = Variables();
    
    sqs = SqsHandler(env.get_sqs_url());
        
    print('Recebendo DLQ')
    print(event['Records'][0]['body'])
        
    sns = SnsHandler(env.get_sns_url_dest());
    response = sns.publish(event['Records'][0]['body']);
    print(response)
    
    print('Email enviado.')
    
    sqs.deleteMessage(event['Records'][0]['receiptHandle'])
    print('Mensagem Removida.')