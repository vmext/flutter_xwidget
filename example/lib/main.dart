import 'package:flutter/material.dart';
import 'package:flutter_xwidget/flutter_xwidget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_xwidget example',
      home: const HomePage(),
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('flutter_xwidget demo')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('快速 padding').padAll(12),
          12.hGap,
          Row(children: [
            const Text('A').bold(),
            8.wGap,
            const Text('B').color(Colors.green).size(18),
          ]),
          16.hGap,
          Text('屏幕尺寸: ${context.media.size}'),
          24.hGap,
          const XPadding.all(16, child: Text('被包裹的内容')),
        ],
      ),
    );
  }
}
