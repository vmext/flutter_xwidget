# flutter_xwidget

提供对 Flutter 基础 Widget 的一组轻量扩展与便捷组件，帮助你写出更简洁可读的 UI 代码。

- 扩展：`BuildContext`、`num`、`Widget`
- 组件：`XGap`（间距）、`XPadding`（快速包边距）
- 示例：`example/` 最小可运行示例

## 安装

在你的 `pubspec.yaml` 中加入依赖：

```yaml
dependencies:
  flutter_xwidget: ^0.1.0
```

## 快速上手

```dart
import 'package:flutter/material.dart';
import 'package:flutter_xwidget/flutter_xwidget.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Title').padAll(16),
        8.hGap,
        Row(children: [
          12.wGap,
          const Text('A').bold(),
          8.wGap,
          const Text('B').color(Colors.blue),
        ]),
        context.media.size.toString().text(),
      ],
    );
  }
}
```

## 发布到 pub.dev

本仓库包含 GitHub Actions 工作流，推送符合语义化版本的 tag（如 `v0.1.0`）即可自动发布。
需在仓库 Secrets 配置 `PUB_CREDENTIALS`。
