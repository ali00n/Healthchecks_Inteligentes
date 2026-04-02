document.addEventListener('DOMContentLoaded', () => {
    // Simulate fetching alerts
    const alertsList = document.getElementById('alerts-list');
    const alerts = [
        { message: 'Alta latência detectada no Backend', time: '10 min atrás', type: 'warning' },
        { message: 'Database falhou no healthcheck (Resolvido)', time: '1 hora atrás', type: 'critical' }
    ];

    alerts.forEach(alert => {
        const div = document.createElement('div');
        div.className = `alert-item ${alert.type}`;
        div.innerHTML = `
            <span>${alert.message}</span>
            <span style="color: var(--text-secondary); font-size: 0.8rem">${alert.time}</span>
        `;
        alertsList.appendChild(div);
    });

    // Fetches live data logic would go here
    setInterval(() => {
        console.log("Fetching latest metrics...");
        // fetch('http://localhost:5000/metrics')
    }, 5000);
});
