import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class FormattedText extends StatelessWidget {
  final String text;
  const FormattedText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return HtmlWidget(
        text,
        renderMode: RenderMode.column,

    );
  }
}
