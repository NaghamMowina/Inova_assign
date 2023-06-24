import 'package:flutter/material.dart';
import 'package:inova_assign/presentation/controllers/overview_provider.dart';
import 'package:provider/provider.dart';

class OverView extends StatefulWidget {
  const OverView({super.key});

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  fetchOverview() async {
    await Provider.of<OverviewProvider>(context, listen: false)
        .fetchlocaloverview();
  }

  @override
  void initState() {
    super.initState();
    fetchOverview();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<OverviewProvider>(builder: (_, overviewstate, __) {
        return overviewstate.showLoading!
            ? const CircularProgressIndicator()
            : overviewstate.overview != null
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(overviewstate.overview?.description ?? "empty")
                    ],
                  )
                : const SizedBox();
      }),
    );
  }
}
