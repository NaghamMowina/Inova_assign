import 'package:flutter/material.dart';
import 'package:inova_assign/presentation/controllers/community_provider.dart';
import 'package:provider/provider.dart';

class CommunityView extends StatefulWidget {
  const CommunityView({super.key});

  @override
  State<CommunityView> createState() => _CommunityViewState();
}

class _CommunityViewState extends State<CommunityView> {
  fetchOverview() async {
    await Provider.of<CommunityProvider>(context, listen: false)
        .fetchlocalcommunity();
  }

  @override
  void initState() {
    super.initState();
    fetchOverview();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CommunityProvider>(builder: (_, communitystate, __) {
        return communitystate.showLoading!
            ? const CircularProgressIndicator()
            : communitystate.community != null
                ? ListView.builder(
                    itemCount: communitystate.community!.community!.length,
                    itemBuilder: (context, index) {
                      return Text(communitystate
                              .community!.community![index].className ??
                          '');
                    },
                  )
                : const SizedBox();
      }),
    );
  }
}
