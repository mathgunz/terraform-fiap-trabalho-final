sls create --template "aws-python3"
virtualenv ~/venv
mkdir layer
pip3 install -r requirements.txt -t layer
sls deploy