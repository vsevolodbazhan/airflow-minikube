FROM apache/airflow:2.8.1

# Freeze pip version to 24.0.
RUN pip install --user --no-cache-dir --upgrade pip==24.0
# Install the Kubernetes provider needed for the KubernetesExecutor.
RUN pip install --user --no-cache-dir apache-airflow-providers-cncf-kubernetes==7.14.0

# Copy the dags from the host to the container.
COPY --chown=airflow:root /airflow/dags /opt/airflow/dags
# Copy the pod template file.
COPY --chown=airflow:root /airflow/pod_template_file.yml /opt/airflow/pod_template_file.yml
