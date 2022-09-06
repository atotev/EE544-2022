#!/bin/bash
docker run -d --name cv-assignment -v /home/atotev/cv-assignment/:/tf/cv-assignment -it --rm --gpus all -p 8888:8888 tensorflow/tensorflow:latest-gpu-py3-jupyter
docker exec -ti cv-assignment pip install -r cv-assignment/requirements.txt
docker logs cv-assignment
