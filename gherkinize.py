#!/usr/bin/env python
# Copyright 2019 by Marilyn Chua
# All rights reserved.

import json
import pandas as pd
from Core.process import *

with open('config.json') as f:
    config = json.load(f)

# Import excel file
excel = pd.ExcelFile('%s' % config['template'])

# Import setting from config.json
metrics = config['metrics']
configure = config['enable_hardening']

# Loop through features in config
print('[*] Generating .feature files')
for key, value in config['features'].items():
    # Parse the sheets in the excel file
    df = excel.parse(key)

    # Convert data to dictionary
    data = df.to_dict(orient='records')

    # Storage of codes to be printed to .PS1
    output = process(data, value["Title"])

    with open(value["Output"], 'w') as f:
        for line in output:
            f.write(line+"\n")
    print('[+] %s generated' % value["Output"])

