import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_widget.dart';

class HomePage extends StatelessWidget {
  late double deviceHeight, deviceWidth;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: deviceHeight,
            width: deviceWidth,
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    pageTitle(),
                    bookRideWidget(),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: astroImageWidget(),
                )
              ],
            )),
      ),
    );
  }

  Widget astroImageWidget() {
    return Container(
      height: deviceHeight * 0.50,
      width: deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/astro_moon.png'),
        ),
      ),
    );
  }

  Widget pageTitle() {
    return const Text(
      '#GoMoon',
      style: TextStyle(
        color: Colors.white,
        fontSize: 62,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget bookRideWidget() {
    return SizedBox(
      height: deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          destinationDropDownWidget(),
          travellersInformationWidget(),
          rideButton()
        ],
      ),
    );
  }

  Widget destinationDropDownWidget() {
    return CustomDropdownButton(
      values: const ['Moon', 'Mars', 'Saturn', 'Earth'],
      width: deviceWidth,
    );
  }

  Widget travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButton(
          values: const ['1', '2', '3', '4'],
          width: deviceWidth * 0.45,
        ),
        CustomDropdownButton(
          values: const ['Economy', 'Business', 'First'],
          width: deviceWidth * 0.40,
        )
      ],
    );
  }

  Widget rideButton() {
    return Container(
      margin: const EdgeInsets.only(bottom: 2.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      width: deviceWidth,
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          'Book Ride!',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
