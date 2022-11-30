import 'package:flutter/cupertino.dart';

TextStyle infoFont = const TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 18.0,
);
Widget additionalInformation(
    String wind, String humidity, String pressure, String feels_like) {
  return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.0),
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
                  Text(
                    " Wind",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "Pressure",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "Feels Like",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "Humidity",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$wind",
                    style: infoFont,
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "$pressure",
                    style: infoFont,
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "$feels_like",
                    style: infoFont,
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "$humidity",
                    style: infoFont,
                  ),
                ],
              )
            ],
          )
        ],
      ));
}
