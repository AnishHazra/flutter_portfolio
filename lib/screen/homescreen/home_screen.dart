import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Colors.blue, Colors.black45],
              ),
            ),
          ),
          SvgPicture.asset(
            "assets/images/Blue-Cloudy.svg",
            height: size.height,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DeviceFrame(
                device: Devices.ios.iPhone13ProMax,
                screen: const Center(
                  child: Text(
                    "Hello world",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
