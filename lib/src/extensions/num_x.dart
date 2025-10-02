import 'package:flutter/widgets.dart';

extension NumX on num {
  SizedBox get hGap => SizedBox(height: toDouble());
  SizedBox get wGap => SizedBox(width: toDouble());

  EdgeInsets get all => EdgeInsets.all(toDouble());
  EdgeInsets get h => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get v => EdgeInsets.symmetric(vertical: toDouble());
}
