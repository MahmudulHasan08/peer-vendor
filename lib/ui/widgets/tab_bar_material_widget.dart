import 'package:flutter/material.dart';
import 'package:peervendor/utils/const/appcolors.dart';

class TabBarMaterialWidget extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

   TabBarMaterialWidget({
    required this.index,
    required this.onChangedTab,
  }) ;

  @override
  _TabBarMaterialWidgetState createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    final placeholder = Opacity(
      opacity: 0,
      child: IconButton(icon: Icon(Icons.no_cell), onPressed: null),
    );

    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabItem(
            index: 0,
            icon: Icon(Icons.home_outlined),
          ),
          buildTabItem(
            index: 1,
            icon: Icon(Icons.shopping_basket_outlined),
          ),
          placeholder,
          buildTabItem(
            index: 2,
            icon: Icon(Icons.chat),
          ),
          buildTabItem(
            index: 3,
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }

  Widget buildTabItem({
    required int index,
    required Icon icon,
  }) {
    final isSelected = index == widget.index;

    return IconTheme(
      data: IconThemeData(
        color: isSelected ? AppColors.mainColor : AppColors.backButtonColor,
      ),
      child: IconButton(
        icon: icon,
        onPressed: () => widget.onChangedTab(index),
      ),
    );
  }
}