import 'package:flutter/material.dart';

import '../../../di/injectable.dart';
import 'controller/home_controller.dart';
import 'widgets/gridview_animals_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = getIt<HomeController>();

  @override
  void initState() {
    controller.initialize();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AdotaPets'),
          actions: [
            IconButton(
              onPressed: () => controller.logoutInApp(context),
              icon: const Icon(
                Icons.exit_to_app,
              ),
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            padding: const EdgeInsets.all(5),
            tabs: [
              Tab(
                icon: Image.asset(
                  'assets/images/dog.png',
                  color: Colors.white,
                  height: 30,
                ),
              ),
              Tab(
                icon: Image.asset(
                  'assets/images/cat.png',
                  color: Colors.white,
                  height: 30,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridViewAnimalWidget(
              list: controller.dogs,
              scrollController: controller.scrollDogController,
            ),
            GridViewAnimalWidget(
              list: controller.cats,
              scrollController: controller.scrollCatController,
            ),
          ],
        ),
      ),
    );
  }
}
