#!/bin/sh

swapoff -a &&\
rm /swapfile &&\
fallocate -l 24G /swapfile &&\
chmod 0600 /swapfile &&\
mkswap /swapfile &&\
swapon -a