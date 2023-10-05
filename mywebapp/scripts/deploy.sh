#!/bin/bash

# Set environment variables
export FLASK_APP=app.py
export FLASK_ENV=production

# Activate a virtual environment (if applicable)
# source /path/to/your/venv/bin/activate

# Pull the latest code from your Git repository
git pull origin main

# Install or update dependencies using pip
pip install -r requirements.txt

# Restart the web server (replace with your actual server command)
# Example: gunicorn -b 0.0.0.0:8000 app:app --daemon

# Perform any database migrations (if applicable)
# flask db upgrade

echo "Deployment completed."

