import 'package:flutter/widgets.dart';

class XGap extends StatelessWidget {
  const XGap.h(this.size, {super.key}) : horizontal = false;
  const XGap.w(this.size, {super.key}) : horizontal = true;

  final double size;
  final bool horizontal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: horizontal ? size : 0, height: horizontal ? 0 : size);
  }
}
