# ServerlessDataProcessing
Serverless Data Processing with Apache Beam and Dataflow backend

Features of this solution:
- Alerting Policies that get triggered when X is met

### Quick start

Create a virtual environment 
```
python3 -m venv df-env
source df-env/bin/activate

```
Install packages needed to execute your pipline

```
python3 -m pip install -q --upgrade pip setuptools wheel
python3 -m pip install apache-beam[gcp]
```

Enable Dataflow API in your GCP account

```
gcloud services enable dataflow.googleapis.com
```
