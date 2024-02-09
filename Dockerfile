FROM apache/airflow:2.8.1

COPY --chown=airflow:root /airflow/dags /opt/airflow/dags
