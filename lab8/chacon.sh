#!/usr/bin/python3

import json

with open('../data/schacon.repos.json', 'r') as file:
    data = json.load(file)

f = open('chacon.csv', 'a')
for d in data[:5]:
    name = d['name']
    html_url = d['html_url']
    updated_at = d['updated_at']
    visibility = d['visibility']
    line = f"{name},{html_url},{updated_at},{visibility}\n"
    f.write(line)

f.close()


