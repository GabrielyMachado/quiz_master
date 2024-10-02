import 'package:flutter/widgets.dart';

abstract class Util {
  static Size screenSize(BuildContext context) =>
      Size(MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height);
}
