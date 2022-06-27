import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'item_girdview_widget.dart';

class GridViewAnimalWidget extends StatelessWidget {
  final list;
  final ScrollController scrollController;
  const GridViewAnimalWidget({
    Key? key,
    required this.list,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: CustomScrollView(
          controller: scrollController,
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ItemGridViewWidget(
                      animal: list[index],
                    );
                  },
                  childCount: list.length,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
