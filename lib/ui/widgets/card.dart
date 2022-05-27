import 'package:flutter/material.dart';
import 'package:peervendor/ui/widgets/text.dart';

import '../../utils/const/appimg.dart';
import '../../utils/const/appstrings.dart';

class ReuseAbleCard extends StatelessWidget {
  final String text;
  const ReuseAbleCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        leading: Image.asset(AppImg.circle),
        title: SmallText(text: text),
      ),
    );
  }
}
