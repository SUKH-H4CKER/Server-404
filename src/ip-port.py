#Server-404-v2
#Owner: SUKH-H4CKER
#Github: https://github.com/SUKH-H4CKER
#Telegram: https://t.me/SUKH_H4CKER_GROUP

import socket
import os

os.system('clear')
os.system('python src/logo.py')
os.system('python src/Start.py')

c = '\033[96m'
print(c)

def get_ip_address(url):
    try:
        ip = socket.gethostbyname(url)
        return ip
    except socket.gaierror:
        return "Unable to resolve host"

def check_port(ip, port):
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(2)
        result = sock.connect_ex((ip, port))
        if result == 0:
            return f"Port {port} is open"
        else:
            return f"Port {port} is closed"
        sock.close()
    except Exception as e:
        return f"Error checking port: {e}"

url = input("\n\nEnter a URL: ")
ip = get_ip_address(url)

print(f"IP Address of {url}: {ip}")

ports_to_check = [80, 443, 22, 21]  # Add more ports to check as needed
for port in ports_to_check:
    print(check_port(ip, port))
