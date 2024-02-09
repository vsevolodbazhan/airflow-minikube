from datetime import datetime

from airflow import DAG
from airflow.operators.bash import BashOperator


with DAG(
    dag_id="example",
    start_date=datetime(2024, 1, 1),
    # Run manually.
    schedule=None,
):
    BashOperator(
        task_id="say_hello",
        bash_command="echo 'Hello, world!'",
    )
