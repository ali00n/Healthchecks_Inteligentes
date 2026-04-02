class Metric:
    def __init__(self, service_name, uptime, response_time):
        self.service_name = service_name
        self.uptime = uptime
        self.response_time = response_time
        
    def to_dict(self):
        return {
            "service_name": self.service_name,
            "uptime": self.uptime,
            "response_time": self.response_time
        }
