from sqsHandler import SqsHandler

def handler(event, context):
    
    print('Recebendo Mensagem.');

    print(event['Records'][0]['body']);