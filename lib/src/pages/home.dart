import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/src/components/video_widget.dart';

import '../components/custom_appbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: CustomAppBar(),
            floating: true,
            snap: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed("/detail/239587");
                  },
                  child: VideoWidget(),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
