Two ways to start the airflow - 

Direct on vm/servers - run the ansible-playbook for it ( the playbook is for redis+Mysql+airflow) 

for postgres DB change following section:
```
sql_alchemy_conn = postgresql+psycopg2://<user>:<password>@postgres/<airflow_db>
celery_result_backend = db+postgresql://<user>:<pass>@postgres/<airflow_db>
```

For aws sqs as message queue:
```
broker_url = sqs://
aws_access_key_id = aaaaaaaaaaaaaaa 
aws_secret_access_key = xxxxxxxxxxxxxxxxxxxxx
broker_transport = sqs
broker_transport_options = {
    'region': '',
    'visibility_timeout': 3600,
    'polling_interval': 0.3,
    'queue_name_prefix': 'airflow-default-',
    }
```

Docker compose - use existing images for DockerHub and try the airflow
