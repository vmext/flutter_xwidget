import 'package:flutter/material.dart';

extension WidgetX on Widget {
  Widget padAll(double v) => Padding(padding: EdgeInsets.all(v), child: this);
  Widget padSym({double h = 0, double v = 0}) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: h, vertical: v), child: this);

  Widget color(Color c) => DefaultTextStyle.merge(style: TextStyle(color: c), child: this);
  Widget size(double s) => DefaultTextStyle.merge(style: TextStyle(fontSize: s), child: this);
  Widget bold([FontWeight w = FontWeight.w600]) =>
      DefaultTextStyle.merge(style: TextStyle(fontWeight: w), child: this);
}
