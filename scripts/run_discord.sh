#!/bin/bash

DEPLOY=$1

if [ -n "$DEPLOY" ]; then
    echo "Running on $DEPLOY"
    if [ $DEPLOY == "raspberry" ]; then
        source /home/pi/wsbscraper/wsbscraper/bin/activate
        python /home/pi/wsbscraper/discord.py -e raspberry -s wallstreetbets
    # else
        # Build the docker container before running
        # docker build -t wsbscraper .
        # Run the docker container and pass through all the arguments
        # docker run -v /home/pi/wsbscraper/data:/wsbscraper/data wsbscraper
    fi
else
    echo "Empty Argument."
fi
