Highcharts.chart("chart5", {
    chart: {
        type: "spline",
        zoomType: "xy",
    },
    title: {
        style: {

            fontWeight: 'unset'
        },
        text: "TIMELINE CẢNH BÁO NGUY CƠ TAI BIẾN XÃ BẢN RỊA - HÀ GIANG",
    },
    subtitle: {
        // text: "Irregular time data in Highcharts JS",
    },
    xAxis: {
        type: "datetime",
        labels: {
            formatter: function () {
                return Highcharts.dateFormat("%H:%M", this.value);
            },
        },
    },
    yAxis: {
        title: {
            text: "Mức độ nguy cơ thiên tai ",
        },
        min: 0,
    },
    tooltip: {
        headerFormat: "<b>{series.name}</b><br>",
        pointFormat: "{point.x:%e. %b}: {point.y:.2f} Điểm",
    },

    plotOptions: {
        series: {
            marker: {
                enabled: true,
                radius: 2.5,
            },
            pointStart: Date.UTC(2023, 1, 1, 7),
            pointInterval: 3600000,
        },
    },

    colors: ["#6CF", "#39F", "#06C", "#036", "#000"],

    // Define the data points. All series have a year of 1970/71 in order
    // to be compared on the same x axis. Note that in JavaScript, months start
    // at 0 for January, 1 for February etc.
    series: [
        {
            name: "Trượt lở",
            data: [
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0.5, 1.0, 2.0, 5.0, 10.0, 15.0, 30.0,
                60.0, 90.0, 80.0, 70.0, 50.0, 30.0, 20.0, 10.0, 0.0,
            ],
        },
        {
            name: "Lũ bùn đá",
            data: [
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 2.0, 5.0, 8.0, 13.0, 25.0,
                40.0, 50.0, 45.0, 60.0, 30.0, 20.0, 10.0, 5.0, 0.0,
            ],
        },
        {
            name: "Lũ quét",
            data: [
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.6, 1.6, 3.0, 5.0, 10.0,
                20.0, 30.0, 26.0, 23.0, 16.0, 10.0, 6.0, 3.0, 0.0,
            ],
        },
    ],
});
Highcharts.chart("chart6", {
    chart: {
        type: "spline",
        zoomType: "xy",
    },
    title: {
        style: {

            fontWeight: 'unset'
        },
        text: "TIMELINE CẢNH BÁO NGUY CƠ TAI BIẾN XÃ CẤT THỊNH - YÊN BÁI",
    },
    subtitle: {
        // text: "Irregular time data in Highcharts JS",
    },
    xAxis: {
        type: "datetime",
        labels: {
            formatter: function () {
                return Highcharts.dateFormat("%H:%M", this.value);
            },
        },
    },
    yAxis: {
        title: {
            text: "Mức độ nguy cơ thiên tai ",
        },
        min: 0,
    },
    tooltip: {
        headerFormat: "<b>{series.name}</b><br>",
        pointFormat: "{point.x:%e. %b}: {point.y:.2f} Điểm",
    },

    plotOptions: {
        series: {
            marker: {
                enabled: true,
                radius: 2.5,
            },
            pointStart: Date.UTC(2023, 1, 1, 7),
            pointInterval: 3600000,
        },
    },

    colors: ["#6CF", "#39F", "#06C", "#036", "#000"],

    // Define the data points. All series have a year of 1970/71 in order
    // to be compared on the same x axis. Note that in JavaScript, months start
    // at 0 for January, 1 for February etc.
    series: [
        {
            name: "Trượt lở",
            data: [
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0.5, 1.0, 2.0, 5.0, 10.0, 15.0, 30.0,
                60.0, 90.0, 80.0, 70.0, 50.0, 30.0, 20.0, 10.0, 0.0,
            ],
        },
        {
            name: "Lũ bùn đá",
            data: [
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 2.0, 5.0, 8.0, 13.0, 25.0,
                40.0, 50.0, 45.0, 60.0, 30.0, 20.0, 10.0, 5.0, 0.0,
            ],
        },
        {
            name: "Lũ quét",
            data: [
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.6, 1.6, 3.0, 5.0, 10.0,
                20.0, 30.0, 26.0, 23.0, 16.0, 10.0, 6.0, 3.0, 0.0,
            ],
        },
    ],
});
Highcharts.chart("chart7", {
    chart: {
        type: "spline",
        zoomType: "xy",
    },
    title: {
        style: {

            fontWeight: 'unset'
        },
        text: "TIMELINE CẢNH BÁO NGUY CƠ TAI BIẾN XÃ CHIỀNG ĐÔNG - SƠN LA",
    },
    subtitle: {
        // text: "Irregular time data in Highcharts JS",
    },
    xAxis: {
        type: "datetime",
        labels: {
            formatter: function () {
                return Highcharts.dateFormat("%H:%M", this.value);
            },
        },
    },
    yAxis: {
        title: {
            text: "Mức độ nguy cơ thiên tai ",
        },
        min: 0,
    },
    tooltip: {
        headerFormat: "<b>{series.name}</b><br>",
        pointFormat: "{point.x:%e. %b}: {point.y:.2f} Điểm",
    },

    plotOptions: {
        series: {
            marker: {
                enabled: true,
                radius: 2.5,
            },
            pointStart: Date.UTC(2023, 1, 1, 7),
            pointInterval: 3600000,
        },
    },

    colors: ["#6CF", "#39F", "#06C", "#036", "#000"],

    // Define the data points. All series have a year of 1970/71 in order
    // to be compared on the same x axis. Note that in JavaScript, months start
    // at 0 for January, 1 for February etc.
    series: [
        {
            name: "Trượt lở",
            data: [
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0.5, 1.0, 2.0, 5.0, 10.0, 15.0, 30.0,
                60.0, 90.0, 80.0, 70.0, 50.0, 30.0, 20.0, 10.0, 0.0,
            ],
        },
        {
            name: "Lũ bùn đá",
            data: [
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 2.0, 5.0, 8.0, 13.0, 25.0,
                40.0, 50.0, 45.0, 60.0, 30.0, 20.0, 10.0, 5.0, 0.0,
            ],
        },
        {
            name: "Lũ quét",
            data: [
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.6, 1.6, 3.0, 5.0, 10.0,
                20.0, 30.0, 26.0, 23.0, 16.0, 10.0, 6.0, 3.0, 0.0,
            ],
        },
    ],
});

Highcharts.chart("chart8", {
    chart: {

        zoomType: "xy",
    },
    title: {
        style: {

            fontWeight: 'unset'
        },
        text: "NGUY CƠ TRƯỢT LỞ",
        align: "center",
    },

    xAxis: {
        type: "datetime",
        offset: 40,
        labels: {
            formatter: function () {
                return Highcharts.dateFormat("%H:%M", this.value);
            }
        }
    },

    yAxis: {
        title: {
            text: "Nguy cơ trượt lở (%)",
        },
    },

    plotOptions: {
        series: {
            pointStart: Date.UTC(2022, 6, 30),
            pointInterval: 36e5,
        },
    },

    series: [

        {
            type: "area",
            keys: ["y"],
            data: [
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0.5, 1.0, 2.0, 5.0, 10.0, 15.0, 30.0,
                60.0, 90.0, 80.0, 70.0, 50.0, 30.0, 20.0, 10.0, 0.0
            ],
            color: Highcharts.getOptions().colors[0],
            fillColor: {
                linearGradient: { x1: 0, x2: 0, y1: 0, y2: 1 },
                stops: [
                    [0, Highcharts.getOptions().colors[0]],
                    [
                        1,
                        Highcharts.color(Highcharts.getOptions().colors[0])
                            .setOpacity(0.25)
                            .get(),
                    ],
                ],
            },
            name: "Nguy cơ trượt lở",
            tooltip: {
                valueSuffix: " %",
            },
            states: {
                inactive: {
                    opacity: 1,
                },
            },
        },
    ],
});