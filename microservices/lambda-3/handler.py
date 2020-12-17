from sqsHandler import SqsHandler
from snsHandler import SnsHandler

def handler(event, context):
    sqs = SqsHandler('https://sqs.us-east-1.amazonaws.com/516773109411/fiap-lab-trabalho-final-principal-dev-DLQ')
    
    for i in range(100):
        msgs = sqs.getMessage(10)
        
        print('entrouuuu')
        print(str(msgs))
        
        sns = SnsHandler('arn:aws:sns:us-east-1:516773109411:lab-fiap-trabalho-final-topico-dev')
            
        response = sns.publish('será que notifica ?')
            
        print(response)
        
        # if('Messages' not in msgs):
        #     break
        # if(len(msgs['Messages']) == 0):
        #     break
        
        # for msg in msgs['Messages']:
        #     print('Entrou no for')
        #     print(str(msg))
            
        #     sns = SnsHandler('arn:aws:sns:us-east-1:516773109411:lab-fiap-trabalho-final-topico-dev')
            
        #     response = sns.publish(sns)
            
        #     print(response)
            
        #     sqs.deleteMessage(msg['ReceiptHandle'])
    