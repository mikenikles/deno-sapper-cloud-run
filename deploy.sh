#!/bin/bash
GCP_PROJECT=$(gcloud config list --format 'value(core.project)')
IMAGE="deno-sapper-cloud-run"
REGION="us-central1"

gcloud builds submit --tag gcr.io/$GCP_PROJECT/$IMAGE
gcloud run deploy $IMAGE --image gcr.io/$GCP_PROJECT/$IMAGE --port 4507 --platform managed --allow-unauthenticated --region $REGION