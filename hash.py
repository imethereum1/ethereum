import re

# Dictionary to store hash types and their lengths
hash_types = {
    'MD5': 32,
    'SHA-1': 40,
    'SHA-224': 56,
    'SHA-256': 64,
    'SHA-384': 96,
    'SHA-512': 128,
}

# Regular expressions for hash detection (to ensure proper hash formatting)
hash_patterns = {
    'MD5': re.compile(r'^[a-fA-F0-9]{32}$'),
    'SHA-1': re.compile(r'^[a-fA-F0-9]{40}$'),
    'SHA-224': re.compile(r'^[a-fA-F0-9]{56}$'),
    'SHA-256': re.compile(r'^[a-fA-F0-9]{64}$'),
    'SHA-384': re.compile(r'^[a-fA-F0-9]{96}$'),
    'SHA-512': re.compile(r'^[a-fA-F0-9]{128}$'),
}

# Function to detect hash type
def detect_hash_type(hash_value):
    hash_value = hash_value.strip()

    for hash_type, pattern in hash_patterns.items():
        if pattern.match(hash_value):
            return hash_type
    
    return "Unknown hash type"

# Function to display banner with colors
def display_banner():
    CYAN = '\033[0;36m'
    GREEN = '\033[0;32m'
    RESET = '\033[0m'

    print(CYAN + """
 N     N   OOO   TTTTTT  H   H  III  N     N   GGG  
 NN   NN  O   O    TT    H   H   I   NN   NN  G     
 N N N N  O   O    TT    HHHHH   I   N N N N  G  GG 
 N  N  N  O   O    TT    H   H   I   N  N  N  G   G 
 N     N   OOO     TT    H   H  III  N     N   GGG  
""" + RESET)
    print(GREEN + "Welcome to the Hash Type Detector!" + RESET + "\n")

# Main function
if __name__ == "__main__":
    # Display the banner
    display_banner()
    
    # Input hash
    input_hash = input("Enter the hash: ")
    
    # Detect the hash type
    detected_type = detect_hash_type(input_hash)
    
    # Show the result with color
    if detected_type != "Unknown hash type":
        print(f"\n{GREEN}Detected hash type: {detected_type}{RESET}")
    else:
        print(f"\n{CYAN}Detected hash type: {detected_type}{RESET}")