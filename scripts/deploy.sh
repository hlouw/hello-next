#!/bin/bash

echo $GCLOUD_SERVICE_KEY | base64 --decode --ignore-garbage > ${HOME}/gcloud-service-key.json

gcloud --quiet components update
gcloud auth activate-service-account --key-file=${HOME}/gcloud-service-key.json
gcloud config set project $GCLOUD_PROJECT

gcloud gcloud app deploy --project $GCLOUD_PROJECT