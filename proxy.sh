# insert package name in <package name> and proxy address in <proxy name>
# eg: pip install tensorflow --proxy proxy-usa.blabla.net

pip install <package name> --proxy <proxy name>

conda config --set proxy_servers.http http://<proxy name>
conda config --set proxy_servers.https https://<proxy name>
