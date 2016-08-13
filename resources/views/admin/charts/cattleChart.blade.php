@extends('admin.layout')

@section('page-wrapper')
    <input type="hidden" id="chartType" value="{{$type}}"/>
    <input type="hidden" id="chartTitle" value="{{$title}}"/>
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">{{$title}}</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-xs-12">
            <select class="form-control" v-on:change="provinceChange" v-model="selProvince">
                <option value="0">กรุณาเลือก</option>
                <option v-for="option in provinces"
                        v-bind:value="option.PROVINCE_ID">@{{ option.PROVINCE_NAME }}</option>
            </select>
        </div>
        <div class="col-lg-12">
            <div id="container"></div>
        </div>
    </div>
@endsection


@section('javascript')

    <script type="text/javascript">
        var app = new AdminApp({
            el: 'body',

            data: {
                chartData: {},
                chartType: "",
                chartTitle: "",
                provinces: [],
                selProvince: 0,
            },
            methods: {
                provinceChange: function () {
                    this.$http.get('/chart/cattle/' + this.chartType+'/'+this.selProvince).then(function (r) {
                        data = r.data;
                        this.chartData = data;
                        this.displayChart();
                    });
                },
                displayChart: function () {
                    var self = this;
                    $('#container').highcharts({
                        chart: {
                            type: 'column'
                        },
                        title: {
                            text: self.chartTitle,
                        },
                        xAxis: {
                            type: 'category',

                            labels: {
                                style: {
                                    fontSize:'20px'
                                }
                            }
                        },
                        yAxis: {
                            min: 0,
                            title: {
                                text: '',
                                align: 'high'
                            },
                            labels: {
                                overflow: 'justify',
                                style: {
                                    fontSize:'20px'
                                }
                            }
                        },
                        legend: {
                            enabled: false
                    },
                        tooltip: self.chartData.tooltip,
                        plotOptions: {
                            series: {
                                borderWidth: 0,
                                dataLabels: {
                                    enabled: true,
                                    format: '{point.y}'
                                }
                            }
                        },

                        series: self.chartData.series,
                        drilldown: self.chartData.drilldown
                    });

                }
                ,
                loadData: function () {
                    this.$http.get("/api/thailand/province").then(function (response) {
                        this.provinces = response.data;
                    });
                    this.$http.get('/chart/cattle/' + this.chartType).then(function (r) {
                        data = r.data;
                        this.chartData = data;
                        this.displayChart();
                    });
                }
            },
            ready: function () {
                this.chartType = $("#chartType").val();
                this.chartTitle = $("#chartTitle").val();
                this.loadData();
            }
        })


    </script>
@endsection