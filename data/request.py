import pandas as pd
import requests as rq
import urllib
import csv
import json
import urllib2


base_url = "https://api.data.gov/ed/collegscorecard/v1/schools/"
csv_file = 'school_names.csv'
api_key = "api_key"

# Parse CSV file with School names
df = pd.read_csv(csv_file)

# Call out names and set them to lowercase for proper urls
names = df.Institution_Name
names_lower = [name.lower() for name in names]


request_url = "{}/?api_key={}".format(base_url,api_key)

# Write response to JSON file for easy parsing into seeds data
with open('school_data.json', 'wb') as w:
	for name in names_lower:
		r = urllib2.Request("{}&school.name={}".format(request_url,name))
		w.write(r)
