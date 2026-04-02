import os
from flask import Flask, jsonify
import yaml

app = Flask(__name__)

def load_config():
    config_path = os.environ.get('CONFIG_PATH', '../config')
    try:
        with open(f'{config_path}/healthchecks.yml', 'r') as f:
            return yaml.safe_load(f)
    except Exception as e:
        return {}

@app.route('/health/status', methods=['GET'])
def health_status():
    config = load_config()
    # Mocking behavior for the assignment
    return jsonify({"status": "healthy", "service": "api-backend", "checks": len(config.get('healthchecks', {}))})

@app.route('/metrics', methods=['GET'])
def metrics():
    # Mock metrics
    return jsonify({
        "frontend": {"uptime": 99.9, "response_time": 120},
        "backend": {"uptime": 99.8, "response_time": 85},
        "database": {"uptime": 100.0, "connections": 15}
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
