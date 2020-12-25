import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class HomeDesktop extends StatefulWidget {
  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    AssetImage companyLogo = AssetImage('assets/images/acs_logo.png');
    String companyName = "ACS Lab\nConsumables Co.";
    String companyAddress =
        "C-1206/1207, Ganesh Glory 11,\nNear BSNL Tower, Jagatpur-Chenpur Road,\nS.G. Highway, Jagatpur, Ahmedabad- 382481,\nGujrat, India.";
    String companyTel = "+91 079 3590 3605";
    String companyNumber = "+91 73870 75709 or +91 77570 53838";
    String companyEmail =
        "acs@acslabconsumables.com\nacsoffice@acslabconsumables.com";

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    child: Image(
                      image: companyLogo,
                      width: 180,
                      height: 180,
                    ),
                  ),
                ),
                Text(
                  companyName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 56.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mapMarkedAlt,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      companyAddress,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.tty,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      companyTel,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mobileAlt,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      companyNumber,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.envelopeOpenText,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      companyEmail,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: LottieBuilder.asset(
              'assets/lottie/acs_lab_lottie.json',
              repeat: true,
              animate: true,
              reverse: true,
              height: 320.0,
            ),
          ),
        ],
      ),
    );
  }
}
