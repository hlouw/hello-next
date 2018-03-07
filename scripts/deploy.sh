#!/bin/bash

echo $GCLOUD_SERVICE_KEY | base64 --decode --ignore-garbage > ${HOME}/gcloud-service-key.json

gcloud auth activate-service-account --key-file=${HOME}/gcloud-service-key.json

gcloud app deploy --project $GCLOUD_PROJECT