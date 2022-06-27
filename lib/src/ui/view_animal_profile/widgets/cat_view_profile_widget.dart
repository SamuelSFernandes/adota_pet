import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/cat_model.dart';
import '../../../shared/widgets/error_image.dart';
import 'info_rating_widget.dart';
import 'info_text_widget.dart';

class CatViewProfileWidget extends StatelessWidget {
  final CatModel cat;
  const CatViewProfileWidget({Key? key, required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: 'hero-${cat.id}',
            child: CachedNetworkImage(
              imageUrl: cat.image.url,
              errorWidget: (_, __, ___) {
                return const ImageErrorWidget();
              },
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cat.name,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(height: 10),
                Text(
                  cat.temperament,
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                ),
                const SizedBox(height: 10),
                InfoTextWidget(
                  title: 'Lifetime: ',
                  value: '${cat.lifeSpan} years',
                ),
                const SizedBox(height: 10),
                InfoTextWidget(
                  title: 'Weight: ',
                  value: '${cat.weight.metric} kg',
                ),
                const SizedBox(height: 10),
                InfoRatingWidget(
                  title: 'Adaptability: ',
                  value: cat.adaptability,
                ),
                const SizedBox(height: 10),
                InfoRatingWidget(
                  title: 'Affection Level: ',
                  value: cat.affectionLevel,
                ),
                const SizedBox(height: 10),
                InfoRatingWidget(
                  title: 'Dog Friendly: ',
                  value: cat.dogFriendly,
                ),
                const SizedBox(height: 10),
                InfoRatingWidget(
                  title: 'Child Friendly: ',
                  value: cat.childFriendly,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
