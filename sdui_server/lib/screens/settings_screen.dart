import 'package:sdui_models/sdui_models.dart';

ScreenModel buildSettingsScreen() {
  return VerticalScreenModel(
    screenTitle: 'Settings',
    components: [
      TitleComponent(title: 'Settings'),

      SpacerComponent(height: 16),

      InfoTileComponent(
        title: 'Notifications',
        subtitle: 'Manage notification preferences',
      ),

      DividerComponent(),

      InfoTileComponent(
        title: 'Privacy',
        subtitle: 'Privacy and security options',
      ),

      DividerComponent(),

      InfoTileComponent(
        title: 'About',
        subtitle: 'App version and information',
      ),

      DividerComponent(),
      SpacerComponent(height: 24),

      ButtonComponent(
        label: 'Open Website',
        action: OpenUrlAction(url: 'https://www.imumz.com/'),
      ),

      ButtonComponent(label: 'Go Back', action: GoBackAction()),
    ],
  );
}
