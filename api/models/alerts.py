class AlertManager:
    def __init__(self, config):
        self.config = config

    def trigger_alert(self, message, type="warning"):
        print(f"[{type.upper()}] ALERT TRIGGERED: {message}")
        if self.config.get("email", {}).get("enabled"):
            print(" -> Sending email...")
        if self.config.get("webhook", {}).get("enabled"):
            print(" -> Dispatching webhook...")
