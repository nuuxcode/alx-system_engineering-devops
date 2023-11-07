#!/usr/bin/python3
"""
this doc for module
"""
import requests

headers = {"User-Agent": "MyCustomUserAgent/1.0"}


def number_of_subscribers(subreddit):
    """method doc"""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    response = requests.get(url, allow_redirects=False, headers=headers)
    if response.status_code == 200:
        data = response.json()
        return data["data"]["subscribers"]
    else:
        return 0
