import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff042B59),
        title: Text('Flutter'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (controller != null) {
                controller!.goBack();
              }
            },
            icon: Icon(
              Icons.navigate_before,
            ),
          ),
          IconButton(
            onPressed: () {
              if (controller != null) {
                controller!.goForward();
              }
            },
            icon: Icon(
              Icons.navigate_next,
            ),
          ),
          IconButton(
            onPressed: () {
              if (controller != null) {
                controller!.loadUrl('https://flutter.dev/');
              }
            },
            icon: Icon(
              Icons.home,
            ),
          )
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: 'https://flutter.dev/',
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }

}