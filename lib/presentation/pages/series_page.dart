import 'package:flutter/material.dart';
import 'package:inova_assign/presentation/views/views.dart';

class SeriesTrainingPage extends StatefulWidget {
  const SeriesTrainingPage({super.key});

  @override
  State<SeriesTrainingPage> createState() => _SeriesTrainingPageState();
}

class _SeriesTrainingPageState extends State<SeriesTrainingPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  PreferredSizeWidget get _tabBar => TabBar(
        controller: _controller,
        indicatorColor: Colors.black,
        automaticIndicatorColorAdjustment: true,
        tabs: const [
          Tab(
              child: Text("overview",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black))),
          Tab(
              child: Text("classes",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black))),
          Tab(
              child: Text("community",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black))),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(
          preferredSize: _tabBar.preferredSize,
          child: Container(
            color: Colors.white,
            child: _tabBar,
          ),
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          OverView(),
          ClassView(),
          CommunityView(),
        ],
      ),
    );
  }
}
