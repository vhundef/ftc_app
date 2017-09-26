#!/bin/bash
sudo apt-get update && sudo apt-get install google-cloud-sdk
gcloud auth activate-service-account --key-file=vh-gcloud.json
sudo gcloud config set project vh-ktm
sudo gsutil config -e
sudo gsutil cp TeamCode/build/outputs/apk/TeamCode-debug.apk gs://vh-ftc/
