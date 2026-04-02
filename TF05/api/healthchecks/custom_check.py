import socket

class TcpCheck:
    def __init__(self, host, port, timeout=5):
        self.host = host
        self.port = port
        self.timeout = timeout

    def verify(self):
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(self.timeout)
            result = sock.connect_ex((self.host, self.port))
            sock.close()
            if result == 0:
                return True, "OK"
            return False, f"Port {self.port} closed"
        except Exception as e:
            return False, str(e)
