import 'package:covid_tracker_usa/providers/states_provider.dart';
import 'package:covid_tracker_usa/src/screens/main_screen.dart';
import 'package:covid_tracker_usa/src/utils/slide_left_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final String fontFamily = "Roboto";
    Provider.of<StatesProvider>(context, listen: false).fillStates();

    return Scaffold(
      floatingActionButton: _floatingActionButton(context),
      body: Stack(
        children: [
          _backgroundFlag(height, width),
          _title(height, width, fontFamily),
        ],
      ),
    );
  }

  Widget _backgroundFlag(double height, double width) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/flags/us.jpg"), fit: BoxFit.cover),
        color: Colors.blue,
      ),
      child: Center(),
    );
  }

  Widget _title(height, width, fontFamily) {
    return Positioned(
      top: height * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: width * 0.02),
            child: Text(
              "COVID-19 Statistics",
              style: TextStyle(
                color: Colors.white, //color white
                fontSize: width * 0.07,
                fontWeight: FontWeight.bold,
                fontFamily: fontFamily,
              ),
            ),
          ),
          Divider(
            color: Colors.white,
            height: 10.0,
            thickness: 1.0,
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.03),
            child: Text(
              "USA",
              style: TextStyle(
                color: Colors.white, //color white
                fontSize: width * 0.05,
                fontFamily: fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _floatingActionButton(context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
      child: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(slideLeft(MainScreen()));
        },
        child: Icon(Icons.double_arrow),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
