import 'package:flutter/widgets.dart';

extension StrX on String {
  Text text({TextStyle? style, TextAlign? textAlign, int? maxLines, TextOverflow? overflow}) =>
      Text(this, style: style, textAlign: textAlign, maxLines: maxLines, overflow: overflow);
}
