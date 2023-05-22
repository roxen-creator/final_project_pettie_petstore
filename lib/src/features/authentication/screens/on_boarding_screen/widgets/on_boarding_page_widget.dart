import 'package:flutter/material.dart';

import '../../../models/on_boarding_model.dart';
import '../../../../../constants/size.dart';

class OnboardingScreenWidget extends StatelessWidget {
  const OnboardingScreenWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(model.image),
              height: size.height * 0.4,
            ),
            Column(
              children: [
                Text(
                  model.title,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  model.subTitle,
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Text(
              model.counterText,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
    );
  }
}
