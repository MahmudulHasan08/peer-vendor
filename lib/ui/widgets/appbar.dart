import 'package:flutter/material.dart';

import '../../utils/const/appstrings.dart';
import '../styles/appstyles.dart';

titleAppBar(title){
  return AppBar(
    title: Text(title,style: AppStyles.appbarStyle,),
    centerTitle: true,
    elevation: 0.0,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
  );
}