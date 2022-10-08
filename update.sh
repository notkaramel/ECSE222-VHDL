#!/usr/bin/bash

git add .
echo "Your update message: "
read -r message
git commit -m "$message"
git push
echo "Closing window in 7s"
sleep 7s
