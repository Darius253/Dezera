import 'package:dezera/models/weather_model.dart';
import 'package:dezera/services/weather_api_client.dart';
import 'package:dezera/views/additionalinformation.dart';
import 'package:dezera/views/currentweather.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiCLient client = WeatherApiCLient();
  Weather? data;

  

  Future<void> getData() async {
    data = await client.getCurrentWeather('London');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text(
            'Weather APP',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    currentWeather(Icons.wb_sunny_rounded, "${data!.temp}",
                        "${data!.city}"),
                    const Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    additionalInformation("${data!.wind}", "${data!.pressure}",
                        "${data!.humidity}", "${data!.feelslike}")
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              return Container();
            }));
  }
}
