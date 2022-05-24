import requests
from os import environ

# Assume we are using the US West data center
SAUCE_REST_URL = 'https://api.us-west-1.saucelabs.com/rest/v1/{}/jobs/{}'


SAUCE_USERNAME = environ['SAUCE_USERNAME']
SAUCE_ACCESS_KEY = environ['SAUCE_ACCESS_KEY']

def update_job_status(passed=None):
    data = {"passed": passed}
    jobs_endpoint = sau

    requests.put()