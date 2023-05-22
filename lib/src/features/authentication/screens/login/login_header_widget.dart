import 'package:flutter/material.dart';
import 'package:pettie_petstore/src/common_widgets/form/form_header_widget.dart';

import 'package:pettie_petstore/src/constants/image_string.dart';
import 'package:pettie_petstore/src/constants/string_manager.dart';

class LoginHeaderWIdget extends StatelessWidget {
  const LoginHeaderWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FormHeaderWidget(
      image: pWeclomeScreenImage,
      title: pLoginTitle,
      subTitle: pLoginSubtitle,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
