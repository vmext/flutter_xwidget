import 'package:flutter/widgets.dart';

class XPadding extends StatelessWidget {
  const XPadding.all(this.value, {required this.child, super.key})
      : horizontal = null,
        vertical = null;
  const XPadding.sym({this.horizontal, this.vertical, required this.child, super.key})
      : value = null;

  final double? value;
  final double? horizontal;
  final double? vertical;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    EdgeInsets padding;
    if (value != null) {
      padding = EdgeInsets.all(value!);
    } else {
      padding = EdgeInsets.symmetric(
        horizontal: horizontal ?? 0,
        vertical: vertical ?? 0,
      );
    }
    return Padding(padding: padding, child: child);
  }
}
