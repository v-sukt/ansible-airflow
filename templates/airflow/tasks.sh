#    environment:
LOAD_EX=n
EXECUTOR=Celery
POSTGRES_USER=airflow
POSTGRES_PASSWORD=airflow
POSTGRES_DB=airflow
export LOAD_EX FERNET_KEY EXECUTOR POSTGRES_USER POSTGRES_PASSWOES POSTGRES_DB

#    webserver:
bash ~airflow/entrypoint.sh webserver &>> ~/logs/webserver.log &
echo -e "[ \e[35m webserver exit status \e[0m] : $?"

#    scheduler:
bash ~airflow/entrypoint.sh scheduler &>> ~/logs/scheduler.log &
echo -e "[\e[34m scheduler status \e[0m] : $?"

#    worker:
bash ~airflow/entrypoint.sh worker &>> ~/logs/worker.log &
echo -e "[\e[322m worker status \e[0m] : $?"

#    flower:
bash ~airflow/entrypoint.sh flower &>> ~/logs/flower.log &
echo -e "[\e[33m flower exit status \e[0m] : $?"
