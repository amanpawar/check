#!/bin/bash
# Run from project folder. Keeps server running in background and (optionally) prevents sleep.
cd "$(dirname "$0")"

# caffeinate -i = prevent Mac from sleeping while the server runs (so ngrok link stays up)
# nohup = server keeps running after you close the terminal
nohup caffeinate -i python3 -m http.server 8765 >> server.log 2>&1 &
echo "Server started on port 8765 (PID $!). To stop: kill $!"
echo "Logs: tail -f $(pwd)/server.log"
