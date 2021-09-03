import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sr_paia/app/ui/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("On Login"),
            TextButton(
                onPressed: () => controller.toHome(), child: Text("Go to home"))
          ],
        ),
      )),
    );
  }
}
