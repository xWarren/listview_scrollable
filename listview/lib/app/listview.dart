import 'package:flutter/material.dart';
import 'package:listview/app/category_section.dart';

import 'package:listview/app/example_data.dart';

import 'package:vertical_scrollable_tabview/vertical_scrollable_tabview.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage>
    with SingleTickerProviderStateMixin {
  final List<Category> data = ExampleData.data;

  // TabController More Information => https://api.flutter.dev/flutter/material/TabController-class.html
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: data.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: VerticalScrollableTabView(
        tabController: tabController,
        listItemData: data,
        verticalScrollPosition: VerticalScrollPosition.begin,
        eachItemChild: (object, index) =>
            CategorySection(category: object as Category),
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text("SliverAppBar"),
              titlePadding: EdgeInsets.only(bottom: 50),
              collapseMode: CollapseMode.pin,
              background: FlutterLogo(),
            ),
            bottom: TabBar(
              isScrollable: true,
              controller: tabController,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              indicatorColor: Colors.cyan,
              labelColor: Colors.cyan,
              unselectedLabelColor: Colors.white,
              indicatorWeight: 3.0,
              tabs: data.map((e) {
                return Tab(text: e.title);
              }).toList(),
              onTap: (index) {
                VerticalScrollableTabBarStatus.setIndex(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
