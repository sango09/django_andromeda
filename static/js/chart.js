var ctx = document.getElementById("analisis").getContext("2d");
var grafi = new Chart(ctx, {
    type: "bar",
    data: {
        labels: ["Juan", "Sebastian", "Santiago"],
        datasets: [{
            label: "cantidad de servicios",
            data: [20, 15, 10,],
            backgroundColor: ["#216583", "#2f416d", "#1089ff"]
        }],
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});