# update download page with current file versions and file sizes

import urllib.request
import requests
from hurry.filesize import size as hurrysize
import fileinput
import re
from datetime import datetime

bucket = "mssm-seq-matrix"
version = "10"
organisms = ["mouse", "human"]

organism = "mouse"

updateDate = datetime.now().strftime('%m-%d-%Y')

matrix_url = "https://s3.amazonaws.com/"+bucket+"/"+organism+"_matrix_v"+version+".h5"
transcript_url = "https://s3.amazonaws.com/"+bucket+"/"+organism+"_transcript_v"+version+".h5"
tpm_url = "https://s3.amazonaws.com/"+bucket+"/"+organism+"_tpm_v"+version+".h5"

matrix_name = organism+"_matrix_v"+version+".h5"
transcript_name = organism+"_transcript_v"+version+".h5"
tpm_name = organism+"_tpm_v"+version+".h5"

template = "download_template.html"

def getFileSize(file_url):
    info = requests.head(file_url)
    return hurrysize(int(info.headers['Content-Length']))

matrix_size = getFileSize(matrix_url)
transcript_size = getFileSize(transcript_url)
tpm_size = getFileSize(tpm_url)

print(matrix_size)
print(transcript_size)
print(tpm_size)

template_file = open(template, "r")
file_data = template_file.read()
template_file.close()

temp = file_data.replace(organism+"_matrix_url", matrix_url)
temp = temp.replace(organism+"_transcript_url", transcript_url)
temp = temp.replace(organism+"_tpm_url", tpm_url)

temp = temp.replace(organism+"_matrix_name", matrix_name)
temp = temp.replace(organism+"_transcript_name", transcript_name)
temp = temp.replace(organism+"_tpm_name", tpm_name)

temp = temp.replace(organism+"_matrix_fie_size", matrix_size)
temp = temp.replace(organism+"_transcript_file_size", transcript_size)
temp = temp.replace(organism+"_tpm_file_size", tpm_size)

temp = temp.replace("update_date", updateDate)
temp = temp.replace("current_version", version)

f = open("../download.html",'w')
f.write(temp)
f.close()
