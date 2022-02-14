import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64,
        ),
        const SizedBox(height: 10),
        Text(
          temp,
          style: const TextStyle(fontSize: 46),
        ),
        const SizedBox(height: 10),
        Text(
          location,
          style: const TextStyle(fontSize: 18, color: Color(0xFF5a5a5a)),
        ),
        const SizedBox(
          height: 60,
        ),
        const Text(
          "Additional Details",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xdd212121)),
        ),
        const Divider(),
        const SizedBox(
          height: 20.0,
        ),
        
      ],
    ),
  );
}
