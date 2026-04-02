import requests

class HttpCheck:
    def __init__(self, url, timeout=5, expected_status=200):
        self.url = url
        self.timeout = timeout
        self.expected_status = expected_status

    def verify(self):
        try:
            resp = requests.get(self.url, timeout=self.timeout)
            if resp.status_code == self.expected_status:
                return True, "OK"
            return False, f"Unexpected status: {resp.status_code}"
        except Exception as e:
            return False, str(e)
