document.addEventListener('DOMContentLoaded', () => {
    // Response Time Chart
    const ctxResponse = document.getElementById('responseTimeChart').getContext('2d');
    new Chart(ctxResponse, {
        type: 'line',
        data: {
            labels: ['00:00', '04:00', '08:00', '12:00', '16:00', '20:00'],
            datasets: [{
                label: 'Frontend (ms)',
                data: [120, 115, 125, 150, 130, 120],
                borderColor: '#3b82f6',
                tension: 0.4
            }, {
                label: 'Backend (ms)',
                data: [85, 80, 90, 110, 95, 85],
                borderColor: '#10b981',
                tension: 0.4
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: { position: 'top' }
            },
            scales: {
                y: { beginAtZero: false }
            }
        }
    });

    // Uptime Chart
    const ctxUptime = document.getElementById('uptimeChart').getContext('2d');
    new Chart(ctxUptime, {
        type: 'bar',
        data: {
            labels: ['Frontend', 'Backend', 'Database'],
            datasets: [{
                label: 'Uptime %',
                data: [99.9, 99.8, 100],
                backgroundColor: ['#3b82f6', '#8b5cf6', '#10b981']
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: { min: 99, max: 100 }
            }
        }
    });
});
