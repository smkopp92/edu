import json
import csv
import pandas as pd
import numpy as np
from pandas import DataFrame, read_csv

# Parse CSV data for all school names in US
file_location = 'accreditation_2016_03.csv'
df = pd.read_csv(file_location)

names = df.Institution_Name

with open('school_names.csv', 'wb') as f:
	names.to_csv(f, index=True,header=True)


