import 'package:flutter/material.dart';

class InfoTextWidget extends StatelessWidget {
  final String title;
  final String value;
  const InfoTextWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: Theme.of(context).textTheme.headline1!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
        children: <TextSpan>[
          TextSpan(
            text: value,
            style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
          ),
        ],
      ),
    );
  }
}
