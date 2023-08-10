import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.imageHeight = 0.2,
      this.heightBetwen,
      this.imageColor,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.textAlign})
      : super(key: key);
  final String image, title, subTitle;
  final double? imageHeight;
  final double? heightBetwen;
  final Color? imageColor;
  final TextAlign? textAlign;
  final CrossAxisAlignment crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
            image: AssetImage(image),
            color: imageColor,
            height: size.height * imageHeight!),
        Text(title, style: Theme.of(context).textTheme.displayMedium),
        const SizedBox(
          height: 10,
        ),
        Text(subTitle,
            textAlign: textAlign, style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: 10),
      ],
    );
  }
}
