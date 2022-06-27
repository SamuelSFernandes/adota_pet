import 'package:adotapet/src/shared/widgets/error_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/dog_model.dart';
import 'info_text_widget.dart';

class DogViewProfileWidget extends StatelessWidget {
  final DogModel dog;
  const DogViewProfileWidget({Key? key, required this.dog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Hero(
            tag: 'hero-${dog.id}',
            child: CachedNetworkImage(
              errorWidget: (_, __, ___) {
                return const ImageErrorWidget();
              },
              imageUrl: dog.image.url,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
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
                dog.name,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(height: 10),
              Text(
                dog.temperament,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
              ),
              const SizedBox(height: 10),
              InfoTextWidget(
                title: 'Lifetime: ',
                value: dog.lifeSpan,
              ),
              const SizedBox(height: 10),
              InfoTextWidget(
                title: 'Height: ',
                value: '${dog.height.metric} cm',
              ),
              const SizedBox(height: 10),
              InfoTextWidget(
                title: 'Weight: ',
                value: '${dog.weight.metric} kg',
              )
            ],
          ),
        ),
      ],
    );
  }
}
