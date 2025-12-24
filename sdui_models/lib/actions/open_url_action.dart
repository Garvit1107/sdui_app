import 'action_model.dart';

class OpenUrlAction extends ActionModel {
  final String url;

  OpenUrlAction({required this.url});

  @override
  Map<String, dynamic> toJson() {
    return {'runtimeType': 'openUrl', 'url': url};
  }
}
