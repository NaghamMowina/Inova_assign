import 'package:flutter/material.dart';
import 'package:inova_assign/presentation/controllers/class_provider.dart';
import 'package:provider/provider.dart';

class ClassView extends StatefulWidget {
  const ClassView({super.key});

  @override
  State<ClassView> createState() => _ClassViewState();
}

class _ClassViewState extends State<ClassView> {
  fetchOverview() async {
    await Provider.of<ClassProvider>(context, listen: false).fetchlocalclass();
  }

  @override
  void initState() {
    super.initState();
    fetchOverview();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ClassProvider>(builder: (_, classstate, __) {
        return classstate.showLoading!
            ? const CircularProgressIndicator()
            : classstate.classModel != null
                ? ListView.builder(
                    itemCount: classstate.classModel!.classes!.length,
                    itemBuilder: (context, index) {
                      return Text(
                          classstate.classModel!.classes![index].name ?? '');
                    },
                  )
                : const SizedBox();
      }),
    );
  }
}
