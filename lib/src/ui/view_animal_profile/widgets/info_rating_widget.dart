import 'package:flutter/material.dart';

class InfoRatingWidget extends StatelessWidget {
  final String title;
  final int value;
  const InfoRatingWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: 30,
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: value,
              itemBuilder: (_, index) {
                return Image.asset(
                  'assets/images/pata_cat.png',
                  height: 50,
                  width: 30,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
