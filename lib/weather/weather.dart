import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbyj_app/weather/model/weather_model.dart';
import 'package:pbyj_app/weather/services/weather_api_client.dart';
import 'package:pbyj_app/weather/views/additional_information.dart';
import 'package:pbyj_app/weather/views/current_weather.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  WeatherApiClient client = WeatherApiClient();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   client.getCurrentWeather();
  // }

  Weather? data;
  Future<void> getData() async {
    data = await client.getCurrentWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFf9f9f9),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(0xFFf9f9f9),
          title: Text(
            "Weather",
            style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                color: Colors.black),
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
                  CurrentWeather(
                      Icons.wb_sunny_rounded, "${data!.temp}", "${data!.name}"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Additional Information",
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Color(0xdd212121),
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  additionalInformation("24", "2", "1014", "24.8"),
                ],
              );
            }
            return Container();
          },
        ));
  }
}
