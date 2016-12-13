import pandas as pd
import requests as rq
import urllib
import csv
import json
import urllib2


base_url = "https://api.data.gov/ed/collegescorecard/v1/schools"
csv_file = 'school_names.csv'
api_key = "api_key"

# Parse CSV file with School names
df = pd.read_csv(csv_file)

# Call out names and set them to lowercase for proper urls
names = df.Institution_Name
names_lower = [name.lower() for name in names]



# Write response to JSON file for easy parsing into seeds data
with open('school_data.json', 'wb') as w:
	for name in names_lower:
		urls_ = "{}?school.name={}&api_key={}".format(base_url,name,api_key)
		try:
			r = urllib2.Request(urls_)
		except urllib2.HTTPError:
			continue
		response = urllib2.urlopen(r)
		data = response.read()
		w.write(data)