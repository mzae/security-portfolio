#!/bin/bash

# =====================================================
# Azure Network Segmentation Image Placeholders
# =====================================================

mkdir -p assets/img/cloud-security/network-segmentation

cd assets/img/cloud-security/network-segmentation || exit

touch architecture.png

touch task1-resource-group.png
touch task1-virtual-network.png

touch task2-asg-web.png
touch task2-asg-management.png

touch task3-web-vm-deployment.png
touch task3-management-vm-deployment.png

touch task4-nic-association.png

touch task5-web-nsg-rules.png
touch task5-management-nsg-rules.png

touch task6-http-validation.png
touch task6-rdp-validation.png

touch task7-network-watcher-validation.png

echo
echo "==========================================="
echo "Azure Network Segmentation Images Created"
echo "==========================================="
echo

