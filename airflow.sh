#pip install "apache-airflow==2.8.1" --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.8.1/constraints-3.11.txt"

# Set environment variables (use your own values as needed)
export AIRFLOW_HOME=~/airflow

# Initialize DB
airflow db init

# Create admin user
airflow users create \
  --username admin \
  --firstname Azhagu \
  --lastname Venkadesh \
  --role Admin \
  --email admin@example.com \
  --password admin

# Start web server (default: http://localhost:8080)
airflow webserver --port 8080 &

# Start scheduler (in background)
airflow scheduler &
