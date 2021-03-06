import 'package:flutter/material.dart';
import 'package:flutter_html_textview/html_parser.dart';

class HtmlTextView extends StatelessWidget {
  final String data;
  final EdgeInsets contentsPadding;
  final EdgeInsets textPadding;
  final Function textCallBack;

  HtmlTextView({
    this.data,
    this.contentsPadding,
    this.textPadding,
    this.textCallBack,
  });

  @override
  Widget build(BuildContext context) {
    HtmlParser htmlParser = new HtmlParser();

    List<Widget> nodes = htmlParser.HParse(this.data,
        textPadding: textPadding, textCallBack: textCallBack);

    return new Container(
        padding: contentsPadding == null
            ? const EdgeInsets.all(5.0)
            : contentsPadding,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: nodes,
        ));
  }
}
