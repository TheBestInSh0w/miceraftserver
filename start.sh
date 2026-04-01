#!/bin/bash

# Download server.jar from Google Drive
curl -L -o server.jar "https://drive.google.com/uc?export=download&id=1_E6MtCnXL0PSdTIGZGDYCcvfG0lIrvmS
"

# Run the server
java -Xms512M -Xmx512M -jar server.jar nogui
