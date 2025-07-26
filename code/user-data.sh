# El archivo user-data.sh es simplemente un nombre personalizado que le
# damos al script que se crea o pega en la instancia EC2 como "User Data". No es un archivo 
# místico que viene con la nube, es un simple archivo .sh (bash script) que uno mismo puede crear.

#!/bin/bash
yum update -y
yum install -y httpd php
systemctl start httpd
systemctl enable httpd