import "package:flutter/material.dart";

import "package:pettie_petstore/src/constants/size.dart";

import "login_footer_widget.dart";
import "login_form_widget.dart";
import "login_header_widget.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(pDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                LoginHeaderWIdget(),
                LoginForm(),
                LoginFooterWIdget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
