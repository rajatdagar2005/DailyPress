import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String blogUrl;

  const ArticleView({Key? key, required this.blogUrl}) : super(key: key);

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.blogUrl));

    // Optional: If using Android and want to set platform-specific implementation
    if (Platform.isAndroid) {
      // No need to manually assign AndroidWebView(), it’s automatically handled in 4.13.0+
      // If needed, use SurfaceAndroidWebView() instead of legacy one (usually unnecessary)
      // WebViewPlatform.instance = SurfaceAndroidWebView();  // Uncomment if hybrid composition issues occur
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false, // Hides back button
        title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Daily") , Text("Press",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
