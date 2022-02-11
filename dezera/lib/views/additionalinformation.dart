import 'package:flutter/cupertino.dart';

TextStyle title = const TextStyle(fontWeight: FontWeight.w600, fontSize: 18);
TextStyle info = const TextStyle(fontWeight: FontWeight.w400, fontSize: 18);


Widget additionalInformation(
    String wind, String pressure, String humidity, String feels_like) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Wind", style: title),
                  const SizedBox(height: 18),
                  Text("Pressure", style: title),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(wind, style: info),
                  const SizedBox(height: 18),
                  Text(pressure, style: info),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Humidity", style: title),
                  const SizedBox(height: 18),
                  Text("Feels Like", style: title),
                ],
              ),
               Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(humidity, style: info),
                  const SizedBox(height: 18),
                  Text(feels_like, style: info),
                ],
              ),
            ])
      ],
    ),
  );
}
