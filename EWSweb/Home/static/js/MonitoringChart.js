Highcharts.chart('container', {
    chart: {
        zoomType: 'xy'
    },
    title: {
        text: 'DIỄN BIẾN MƯA GIỜ',
        align: 'center',
        style: {

            fontWeight: 'unset'
        },
    },
    subtitle: {

    },

    plotOptions: {
        series: {
            pointStart: Date.UTC(2023, 1, 1, 7),
            pointInterval: 3600000,
        },
    },
    xAxis: [{
        type: "datetime",
        labels: {
            formatter: function () {
                return Highcharts.dateFormat("%H:%M", this.value);
            }
        },
        title: {
            text: "Thời gian",
        },
    }],
    yAxis: [{ // Primary yAxis
        labels: {
            format: '{value}°C',
            style: {
                color: Highcharts.getOptions().colors[1]
            }
        },
        title: {
            text: 'Nhiệt độ',
            style: {
                color: Highcharts.getOptions().colors[1]
            }
        }
    }, { // Secondary yAxis
        title: {
            text: 'Lượng mưa',
            style: {
                color: Highcharts.getOptions().colors[0]
            }
        },
        labels: {
            format: '{value} mm',
            style: {
                color: Highcharts.getOptions().colors[0]
            }
        },
        opposite: true
    }],
    tooltip: {
        shared: true
    },
    legend: {
        align: 'center',
        x: 80,
        verticalAlign: 'bottom',
        y: 80,
        floating: true,
        backgroundColor:
            Highcharts.defaultOptions.legend.backgroundColor || // theme
            'rgba(255,255,255,0.25)'
    },
    series: [{
        name: 'Lượng mưa',
        type: 'column',
        yAxis: 1,
        data: [0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00,
            0.00,
            0.00,
            0.00,
            0.00,
            0.00,
            2.00,
            0.00,
            0.00,
            4.00,
            28.00,
            4.00,
            20.00,
            4.00,
            0.00,
            2.00,
            12.00,
            52.00,
            4.00,
            0.00,
            4.00,
            4.00,
            0.00,
            0.00,
            0.00,
            0.00,
            10.00,
            8.00,
            10.00,
            0.00,
            4.00,
            0.00,
            12.00,
            14.00,
            0.00,
            4.00,
            0.00,
            0.00,
            0.00,],
        tooltip: {
            valueSuffix: ' mm'
        }

    }, {
        name: 'Nhiệt độ',
        type: 'spline',
        data: [22.01,
            21.20,
            21.33,
            21.66,
            22.00,
            22.59,
            23.19,
            22.99,
            23.55,
            24.74,
            24.84,
            24.11,
            24.88,
            27.00,
            27.76,
            27.10,
            27.48,
            25.11,
            24.16,
            23.10,
            24.00,
            22.85,
            23.06,
            22.91,
            21.93,
            21.43,
            21.65,
            21.95,
            22.07,
            22.12,
            22.28,
            22.40,
            22.42,
            22.44,
            22.83,
            22.76,
            23.20,
            23.86,
            24.50,
            25.21,
            25.65,
            24.88,
            27.43,
            26.99,
            26.33,
            25.04,
            24.03,
            24.11],
        tooltip: {
            valueSuffix: '°C'
        }
    }]
});
var ranges = [


],
    averages = [
        57.4407,
        57.47574,
        57.47574,
        57.46031,
        57.40611,
        57.2841,
        57.17826,
        57.08342,
        56.99937,
        56.9777,
        57.0319,
        57.08342,
        57.14804,
        57.24277,
        57.34848,
        57.42447,
        57.44876,
        57.45157,
        57.42447,
        57.40012,
        57.36734,
        57.34848,
        57.30783,
        57.36734,
        57.42172,
        57.46786,
        57.49759,
        57.46786,
        57.3925,
        57.27598,
        57.15681,
        57.08085,
        57.01567,
        56.98326,
        57.01567,
        57.08342,
        57.15891,
        57.24838,
        57.32675,
        57.36734,
        57.40536,
        57.38638,
        57.36209,
        57.35123,
        57.32431,
        57.31607,
        57.31052,
        57.35385,
    ];
datacontainer2 = [
    0.713,
    0.74804,
    0.74804,
    0.73261,
    0.67841,
    0.5564,
    0.45056,
    0.35572,
    0.27167,
    0.25,
    0.3042,
    0.35572,
    0.42034,
    0.51507,
    0.62078,
    0.69677,
    0.72106,
    0.72387,
    0.69677,
    0.67242,
    0.63964,
    0.62078,
    0.58013,
    0.63964,
    0.69402,
    0.74016,
    0.76989,
    0.74016,
    0.6648,
    0.54828,
    0.42911,
    0.35315,
    0.28797,
    0.25556,
    0.28797,
    0.35572,
    0.43121,
    0.52068,
    0.59905,
    0.63964,
    0.67766,
    0.65868,
    0.63439,
    0.62353,
    0.59661,
    0.58837,
    0.58282,
    0.62615,
];


Highcharts.chart('container2', {

    title: {
        text: 'DIỄN BIẾN ÁP LỰC NƯỚC LỖ RỖNG TRÊN SƯỜN LA',
        align: 'center',
        style: {

            fontWeight: 'unset'
        },
    },



    xAxis: {
        type: 'datetime',
        accessibility: {
            rangeDescription: 'DIỄN BIẾN MỰC NƯỚC SUỐI'
        },
        labels: {
            formatter: function () {
                return Highcharts.dateFormat("%H:%M", this.value);
            }
        },
        title: {
            text: "Thời gian",
        },
    },


    yAxis: {
        title: {
            text: null
        }
    },
    legend: {
        enabled: false
    },

    tooltip: {
        crosshairs: true,
        shared: true,
        valueSuffix: 'kPa'
    },

    plotOptions: {
        series: {
            pointStart: Date.UTC(2023, 6, 1, 7),

            pointInterval: 3600000,
        }
    },

    series: [{
        name: 'Áp lực',
        data: datacontainer2,
        zIndex: 1,
        marker: {
            fillColor: 'white',
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[0]
        }
    }]
});
Highcharts.chart('container3', {

    title: {
        text: 'DIỄN BIẾN ÁP LỰC NƯỚC LỖ RỖNG TRÊN SƯỜN LA',
        align: 'center',
        style: {

            fontWeight: 'unset'
        },
    },



    xAxis: {
        type: 'datetime',
        accessibility: {
            rangeDescription: 'DIỄN BIẾN ÁP LỰC NƯỚC LỖ RỖNG TRÊN SƯỜN LA'
        },
        labels: {
            formatter: function () {
                return Highcharts.dateFormat("%H:%M", this.value);
            }
        },
        title: {
            text: "Thời gian",
        },
    },


    yAxis: {
        title: {
            text: null
        }
    },
    legend: {
        enabled: false
    },

    tooltip: {
        crosshairs: true,
        shared: true,
        valueSuffix: 'kPa'
    },

    plotOptions: {
        series: {
            pointStart: Date.UTC(2023, 6, 1, 7),

            pointInterval: 3600000,
        }
    },

    series: [{
        name: 'Áp lực',
        data: averages,
        zIndex: 1,
        marker: {
            fillColor: 'white',
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[0]
        }
    }]
});
Highcharts.chart('container4', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'DIỄN BIẾN RUNG ĐỘNG NỀN XÁC ĐỊNH BẰNG GEOPHONE',
        style: {

            fontWeight: 'unset'
        },
    },
    subtitle: {
        // text: 'Từ  01/02/2023 đến 03/02/2023'
    },
    xAxis: {
        type: 'datetime',
        crosshair: true,
        labels: {
            formatter: function () {
                return Highcharts.dateFormat("%H:%M", this.value);
            }
        }
    },
    yAxis: {

        title: {
            text: 'Giá trị rung động'
        }
    },
    tooltip: {
        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
        footerFormat: '</table>',
        shared: true,
        useHTML: true
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        },
        series: {
            pointStart: Date.UTC(2023, 6, 1, 7),
            pointInterval: 3600000,
        }
    },

    series: [{
        name: 'Giá trị lớn nhất',
        data: [0.0404197,
            0.03815162,
            0.03701794,
            0.040797,
            0.03739619,
            0.04268682,
            0.03399467,
            0.03550649,
            0.03852963,
            0.04079711,
            0.03852975,
            0.04004133,
            0.04306459,
            0.04004216,
            0.04004133,
            0.04230893,
            0.03966296,
            0.03663993,
            0.03588486,
            0.03777397,
            0.03664005,
            0.04419827,
            0.03512847,
            0.03777397,
            0.04457641,
            0.03890753,
            0.04041934,
            0.04419863,
            0.03663969,
            0.03248274,
            0.03511655,
            0.03701842,
            0.04004133,
            0.04004169,
            0.03815174,
            0.03852952,
            0.03777397,
            0.038908,
            0.0396632,
            0.03777397,
            0.04155302,
            0.04004145,
            0.03550649,
            0.04004085,
            0.03966367,
            0.04193127,
            0.03626204,
            0.04193115,]

    }, {
        name: 'Đỉnh rung động',
        data: [0.0404197, 0.03815162, 0.03701794, 0.040797, 0.03739619, 0.04268682, 0.03399467, 0.03550649, 0.03852963, 0.04079711, 0.03852975,
            0.04004133,
            0.04306459,
            0.04004216,
            0.04004133,
            0.04230893,
            0.03966296,
            0.03663993,
            0.03588486,
            0.03777397,
            0.03664005,
            0.04419827,
            0.03512847,
            0.03777397,
            0.04457641,
            0.03890753,
            0.04041934,
            0.04419863,
            0.03663969,
            0.03248274,
            0.03511655,
            0.03701842,
            0.04004133,
            0.04004169,
            0.03815174,
            0.03852952,
            0.03777397,
            0.038908,
            0.0396632,
            0.03777397,
            0.04155302,
            0.04004145,
            0.03550649,
            0.04004085,
            0.03966367,
            0.04193127,
            0.03626204,
            0.04193115,]

    },]
});
const data = [
    0.713,
    0.74804,
    0.74804,
    0.73261,
    0.67841,
    0.5564,
    0.45056,
    0.35572,
    0.27167,
    0.25,
    0.3042,
    0.35572,
    0.42034,
    0.51507,
    0.62078,
    0.69677,
    0.72106,
    0.72387,
    0.69677,
    0.67242,
    0.63964,
    0.62078,
    0.58013,
    0.63964,
    0.69402,
    0.74016,
    0.76989,
    0.74016,
    0.6648,
    0.54828,
    0.42911,
    0.35315,
    0.28797,
    0.25556,
    0.28797,
    0.35572,
    0.43121,
    0.52068,
    0.59905,
    0.63964,
    0.67766,
    0.65868,
    0.63439,
    0.62353,
    0.59661,
    0.58837,
    0.58282,
    0.62615,
];
// Highcharts.chart("container2", {
//     chart: {

//         zoomType: "xy",
//     },
//     title: {
//         text: "DIỄN BIẾN MỰC NƯỚC SUỐI",
//         align: "center",
//         style: {

//             fontWeight: 'unset'
//         },
//     },


//     xAxis: {
//         type: "datetime",
//         offset: 40,
//         labels: {
//             formatter: function () {
//                 return Highcharts.dateFormat("%H:%M", this.value);
//             }
//         },
//         title: {
//             text: "Thời gian",
//         },
//     },

//     yAxis: {
//         title: {
//             text: "Mực nước (m)",
//         },
//     },

//     plotOptions: {
//         series: {
//             pointStart: Date.UTC(2022, 6, 30),
//             pointInterval: 36e5,
//         },
//     },
//     legend: {

//         enabled: false
//     },
//     series: [

//         {
//             type: "area",
//             keys: ["y"], // wind direction is not used here
//             data: data,
//             // color: Highcharts.getOptions().colors[0],
//             // fillColor: {
//             //     linearGradient: { x1: 0, x2: 0, y1: 0, y2: 1 },
//             //     stops: [
//             //         [0, Highcharts.getOptions().colors[0]],
//             //         [
//             //             1,
//             //             Highcharts.color(Highcharts.getOptions().colors[0])
//             //                 .setOpacity(0.25)
//             //                 .get(),
//             //         ],
//             //     ],
//             // },
//             name: "Mực nước",
//             tooltip: {
//                 valueSuffix: " m",
//             },
//             states: {
//                 inactive: {
//                     opacity: 1,
//                 },
//             },
//         },
//     ],
// });