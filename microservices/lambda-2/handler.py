from sqsHandler import SqsHandler

def handler(event, context):
    
    sqs = SqsHandler('https://sqs.us-east-1.amazonaws.com/516773109411/fiap-lab-trabalho-final-principal-dev')

    print('Iniciando.')
    
    for i in range(20):
        msgs = sqs.getMessage(10)
        
        print('Mensagens: ' + str(msgs))
        
        if('Messages' not in msgs):
            print('Não tem mensagem.')
            break
        if(len(msgs['Messages']) == 0):
            print('Vazio.')
            break
        
        for msg in msgs['Messages']:
            print('Mensagem: ' + str(msg['Body']))
            
            # sqs.deleteMessage(msg['ReceiptHandle'])
            # print('Mensagem: ' + str(msg))

# def handler(event, context):
#     sqs = SqsHandler('https://sqs.us-east-1.amazonaws.com/516773109411/fiap-lab-trabalho-final-principal-dev')
    
#     for i in range(100):
#         msgs = sqs.getMessage(10)
        
#         print('entrouuuu')
#         print(str(msgs))
        
#         if('Messages' not in msgs):
#             break
#         if(len(msgs['Messages']) == 0):
#             break
        
#         for msg in msgs['Messages']:
#             print('Entrou no for')
#             print(str(msg))