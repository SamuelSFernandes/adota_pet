import 'package:adotapet/data/models/cat_model.dart';
import 'package:adotapet/data/models/dog_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/app_colors.dart';
import '../../../shared/constants/named_routes.dart';
import '../../../shared/widgets/error_image.dart';

class ItemGridViewWidget extends StatelessWidget {
  final animal;
  const ItemGridViewWidget({
    Key? key,
    required this.animal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (animal is CatModel) {
        } else if (animal is DogModel) {}
        Navigator.pushNamed(
          context,
          NamedRoutes.viewAnimal,
          arguments: animal,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryColor,
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Hero(
                tag: 'hero-${animal.id}',
                child: CachedNetworkImage(
                  imageUrl: animal.image.url,
                  errorWidget: (_, __, ___) {
                    return const ImageErrorWidget();
                  },
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: ColoredBox(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    height: 47,
                    child: ColoredBox(
                      color: kPrimaryColor,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Center(
                            child: Text(
                              animal.name,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
