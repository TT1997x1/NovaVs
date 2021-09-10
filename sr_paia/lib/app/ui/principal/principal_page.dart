import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sr_paia/app/ui/principal/principal_controller.dart';

class PrincipalPage extends GetView<PrincipalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 890.22,
        height: 554.65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(29.13),
            topRight: Radius.circular(29.13),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x3f000000),
              blurRadius: 18.99,
              offset: Offset(5.07, 5.07),
            ),
          ],
        ),
        child: ListView(
          children: <Widget>[
            Container(
              width: 890.22,
              height: 255.80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(29.13),
                  bottomRight: Radius.circular(29.13),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    blurRadius: 18.99,
                    offset: Offset(5.07, 5.07),
                  ),
                ],
                color: Color(0xfffdbd4e),
              ),
            ),
            SizedBox(
              width: 559.71,
              height: 155.76,
              child: Text(
                "Não compre, adote um amigo\n",
                style: TextStyle(
                  color: Color(0xff2d384c),
                  fontSize: 30.78,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: 93.71,
              height: 25.33,
              child: Text(
                "Cachorro",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff2d384c),
                  fontSize: 25.59,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(56.98),
                color: Color(0xfffdbd4e),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 35.46,
                    height: 34.19,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff2d384c),
                    ),
                  ),
                  SizedBox(width: 13.93),
                  SizedBox(
                    width: 35.50,
                    height: 6.33,
                    child: Text(
                      "Esse é o momento",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        // color: Color(0xff2d384c),
                        fontSize: 15.39,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 51,
                vertical: 38,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 517.03,
                    height: 409.45,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 517.03,
                              height: 292.21,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 517.03,
                                        height: 253.72,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(36.93),
                                            topRight: Radius.circular(36.93),
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                          ),
                                        ),
                                        child: FlutterLogo(
                                            size: 253.7166290283203),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 406.23,
                                    top: 27.30,
                                    child: Container(
                                      width: 75.47,
                                      height: 72.26,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xfffdbd4e),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 517.03,
                              height: 155.73,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(36.93),
                                  bottomRight: Radius.circular(36.93),
                                ),
                                color: Color(0xff2d384c),
                              ),
                              padding: const EdgeInsets.only(
                                left: 32,
                                right: 22,
                                top: 29,
                                bottom: 45,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 462.43,
                                    height: 32.11,
                                    child: Text(
                                      "The 8 best cat foods to buy",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 38.54,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 17.66),
                                  SizedBox(
                                    width: 166.99,
                                    height: 32.11,
                                    child: Opacity(
                                      opacity: 0.70,
                                      child: Text(
                                        "8 minutes",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 38.54,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 21.53),
                  Container(
                    width: 516.35,
                    height: 408.91,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 516.35,
                              height: 291.83,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 516.35,
                                        height: 253.38,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(36.88),
                                            topRight: Radius.circular(36.88),
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                          ),
                                        ),
                                        child: FlutterLogo(size: 253.3828125),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 516.35,
                              height: 155.52,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(36.88),
                                  bottomRight: Radius.circular(36.88),
                                ),
                                color: Color(0xff2d384c),
                              ),
                              padding: const EdgeInsets.only(
                                left: 32,
                                right: 22,
                                top: 29,
                                bottom: 45,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 461.82,
                                    height: 32.07,
                                    child: Text(
                                      "Pet medical that you sho...",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 38.49,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 17.64),
                                  SizedBox(
                                    width: 166.77,
                                    height: 32.07,
                                    child: Opacity(
                                      opacity: 0.70,
                                      child: Text(
                                        "9 minutes",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 38.49,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 21.53),
                  Container(
                    width: 516.35,
                    height: 408.91,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 516.35,
                              height: 291.83,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 516.35,
                                        height: 253.38,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(36.88),
                                            topRight: Radius.circular(36.88),
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                          ),
                                        ),
                                        child: FlutterLogo(size: 253.3828125),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 405.70,
                                    top: 27.26,
                                    child: Container(
                                      width: 75.37,
                                      height: 72.16,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xfffdbd4e),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 516.35,
                              height: 155.52,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(36.88),
                                  bottomRight: Radius.circular(36.88),
                                ),
                                color: Color(0xff2d384c),
                              ),
                              padding: const EdgeInsets.only(
                                left: 32,
                                right: 22,
                                top: 29,
                                bottom: 45,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 461.82,
                                    height: 32.07,
                                    child: Text(
                                      "The 8 best cat foods to buy",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 38.49,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 17.64),
                                  SizedBox(
                                    width: 166.77,
                                    height: 32.07,
                                    child: Opacity(
                                      opacity: 0.70,
                                      child: Text(
                                        "15 minutes",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 38.49,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 72,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 64.58,
                          height: 64.58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff2d384c),
                          ),
                        ),
                        SizedBox(height: 12.66),
                        SizedBox(
                          width: 116.50,
                          height: 25.33,
                          child: Text(
                            "Discover",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff2d384c),
                              fontSize: 30.39,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 117.77),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 51.92,
                          height: 72.18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffc2c2c2),
                          ),
                        ),
                        SizedBox(height: 12.66),
                        SizedBox(
                          width: 75.98,
                          height: 25.33,
                          child: Text(
                            "Maps",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffc2c2c2),
                              fontSize: 30.39,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 117.77),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 88.64,
                          height: 60.78,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffc2c2c2),
                          ),
                        ),
                        SizedBox(height: 12.66),
                        SizedBox(
                          width: 75.98,
                          height: 25.33,
                          child: Text(
                            "Learn",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffc2c2c2),
                              fontSize: 30.39,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 117.77),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60.78,
                          height: 60.78,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffc2c2c2),
                          ),
                        ),
                        SizedBox(height: 12.66),
                        SizedBox(
                          width: 87.38,
                          height: 25.33,
                          child: Text(
                            "Profile",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffc2c2c2),
                              fontSize: 30.39,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
