import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({Key? key}) : super(key: key);

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode (JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://flutter.dev'));
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller);
  }
}