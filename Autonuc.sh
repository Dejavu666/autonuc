#!/bin/bash

echo 'Silahkan ketikkan url untuk auto scanning example: autonuc example.com'

url=$1

echo 'Sedang scanning active sub domain $url...'
subfinder -d $url -o subfinder.txt && httpx -l subfinder.txt -mc 200 | tee domainact.txt

rm subfinder.txt

echo 'Scanning selesai... file tersimpan subdomainact.txt'
echo 'Scanning Nuclei...'

nuclei -l domainact.txt -ept ssl -s low,medium,high,critical -o nuclei.txt
