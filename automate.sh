#!/bin/bash

export PROJECT_ID=$(gcloud config get-value project)
gsutil mb -l US gs://$PROJECT_ID

# Launch the pipeline
python3 my_pipeline.py \
  --project=${PROJECT_ID} \
  --region=us-central1 \
  --output gs://$PROJECT_ID/results/prefix \
  --tempLocation=gs://$PROJECT_ID/temp/ \
  --max_num_workers=5 \
  --runner=DataflowRunner
