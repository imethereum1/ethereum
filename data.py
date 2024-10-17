import requests
from bs4 import BeautifulSoup
from urllib.parse import urlparse, parse_qs

# Function to extract parameters from a URL
def extract_url_params(url):
    parsed_url = urlparse(url)
    params = parse_qs(parsed_url.query)
    return params

# Function to extract form parameters from a webpage
def extract_form_params(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.content, 'html.parser')
    
    forms = soup.find_all('form')
    form_params = {}
    
    for form in forms:
        form_action = form.get('action')
        inputs = form.find_all('input')
        params = {}
        
        for input_tag in inputs:
            input_name = input_tag.get('name')
            if input_name:
                params[input_name] = input_tag.get('value', '')
        
        form_params[form_action] = params

    return form_params

# Main function to get all parameters
def get_website_parameters(url):
    # Get URL parameters
    url_params = extract_url_params(url)
    
    # Get form parameters
    form_params = extract_form_params(url)
    
    print("URL Parameters:")
    if url_params:
        for param, value in url_params.items():
            print(f" - {param}: {value}")
    else:
        print(" - None found")
    
    print("\nForm Parameters:")
    if form_params:
        for form_action, params in form_params.items():
            print(f"Form action: {form_action}")
            for param, value in params.items():
                print(f" - {param}: {value}")
    else:
        print(" - None found")

# Example usage
if __name__ == "__main__":
    url = input("Enter the website URL: ")
    get_website_parameters(url)