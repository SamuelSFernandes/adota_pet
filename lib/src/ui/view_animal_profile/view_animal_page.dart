import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../di/injectable.dart';
import 'controller/view_animal_controller.dart';
import 'widgets/cat_view_profile_widget.dart';
import 'widgets/dog_view_profile_widget.dart';

class ViewAnimalPage extends StatefulWidget {
  const ViewAnimalPage({Key? key}) : super(key: key);

  @override
  State<ViewAnimalPage> createState() => _ViewAnimalPageState();
}

class _ViewAnimalPageState extends State<ViewAnimalPage> {
  final controller = getIt<ViewAnimalController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    controller.result = ModalRoute.of(context)?.settings.arguments;
    controller.initialize();
  }

  @override
  void dispose() {
    controller.cat == null;
    controller.dog == null;
    super.dispose();
  }

  Widget? getAnimalType() {
    if (controller.dog != null) {
      return DogViewProfileWidget(dog: controller.dog!);
    } else if (controller.cat != null) {
      return CatViewProfileWidget(cat: controller.cat!);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.result.name),
      ),
      body: Observer(builder: (context) {
        return getAnimalType()!;
      }),
    );
  }
}
