import 'package:flutter/material.dart';
import 'package:sdui_models/sdui_models.dart';

import '../core/api_client.dart';
import '../mappers/screen_mapper.dart';

class SDUIScreen extends StatefulWidget {
  final String screenName;

  const SDUIScreen({super.key, required this.screenName});

  @override
  State<SDUIScreen> createState() => _SDUIScreenState();
}

class _SDUIScreenState extends State<SDUIScreen> {
  late Future<ScreenModel> _future;

  @override
  void initState() {
    super.initState();
    _future = ApiClient.fetchScreen(widget.screenName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ScreenModel>(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasError) {
          return ScreenMapper.map(
            context,
            ErrorScreenModel(
              title: 'Network Error',
              message: 'Unable to reach server',
            ),
          );
        }

        return ScreenMapper.map(context, snapshot.data!);
      },
    );
  }
}
