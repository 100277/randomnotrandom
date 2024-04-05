class Data{
  final String date;
  final double temp;
  final String name;
  final String url;
  final String? rating;
  final num? rate;
  final String weather;



  Data({
    required this.date,
    required this.temp,
    required this.name, 
    required this.url,
    this.rating,
    this.rate,
    required this.weather,
  });
}

List<Data> Datalist = [
  Data(date: "4/5/2024", temp: 30.0, name: "McDonalds", url: "https://www.google.com/maps/place/McDonald's/@32.915426,-117.206513,13z/data=!4m10!1m2!2m1!1smcDonalds!3m6!1s0x80dbf8e3d988633b:0x74646c049437bfb8!8m2!3d32.915426!4d-117.1302953!15sCgltY0RvbmFsZHMiA4gBAVoLIgltY2RvbmFsZHOSARRmYXN0X2Zvb2RfcmVzdGF1cmFudOABAA!16s%2Fg%2F1tkp0275?entry=ttu", rating: "", rate: 0, weather: "sunny"),
];
//to be implemented