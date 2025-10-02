import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_xwidget/flutter_xwidget.dart';

void main() {
  test('XGap creates correct sized box', () {
    const g1 = XGap.h(8);
    const g2 = XGap.w(12);
    expect(g1.size, 8);
    expect(g1.horizontal, false);
    expect(g2.size, 12);
    expect(g2.horizontal, true);
  });
}
