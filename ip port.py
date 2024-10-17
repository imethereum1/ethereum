import socket
import subprocess
import sys
import time
from termcolor import colored

# রঙ সেটআপ
def print_banner():
    print(colored("""
    ======================================
    |     WELCOME TO IP & PORT SCANNER   |
    ======================================
    """, "cyan"))

# অপশন মেনু প্রদর্শন করা
def menu():
    print(colored("[1] Get IP from Website URL", "green"))
    print(colored("[2] Scan Open Ports using IP", "yellow"))
    print(colored("[0] Exit", "red"))

# ওয়েবসাইটের লিঙ্ক থেকে IP অ্যাড্রেস বের করা
def get_ip_from_url():
    url = input(colored("Enter website URL (e.g. www.example.com): ", "green"))
    try:
        ip_address = socket.gethostbyname(url)
        print(colored(f"IP Address of {url} is: {ip_address}", "blue"))
    except socket.gaierror:
        print(colored("Invalid URL or unable to resolve IP.", "red"))

# IP অ্যাড্রেস থেকে ওপেন পোর্ট স্ক্যান করা
def scan_open_ports():
    ip_address = input(colored("Enter the IP address: ", "yellow"))
    try:
        print(colored(f"Scanning open ports for {ip_address}...", "blue"))
        # nmap দিয়ে পোর্ট স্ক্যান করা
        nmap_command = f"nmap -p- {ip_address}"
        subprocess.call(nmap_command, shell=True)
    except Exception as e:
        print(colored(f"Error: {e}", "red"))

# মেইন ফাংশন
def main():
    print_banner()
    while True:
        menu()
        choice = input(colored("Enter your choice: ", "cyan"))
        
        if choice == '1':
            get_ip_from_url()
        elif choice == '2':
            scan_open_ports()
        elif choice == '0':
            print(colored("Exiting the program. Goodbye!", "red"))
            sys.exit()
        else:
            print(colored("Invalid choice. Please try again.", "red"))

        # একটু বিরতি দেওয়া
        time.sleep(1)
        print("\n")

if __name__ == "__main__":
    main()