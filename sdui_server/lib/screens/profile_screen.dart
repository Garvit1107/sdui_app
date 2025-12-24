import 'package:sdui_models/sdui_models.dart';

ScreenModel buildProfileScreen() {
  return VerticalScreenModel(
    screenTitle: 'Profile',
    components: [
      TitleComponent(title: 'Your Profile'),

      SpacerComponent(height: 16),

      InfoTileComponent(
        title: 'Garvit',
        subtitle: 'garvitbudhiraja1@gmail.com',
        iconUrl:
            'https://freelancer.garvit.site/wp-content/uploads/2025/06/WhatsApp-Image-2025-06-13-at-00.35.51_7974a7b5-Photoroom-1.png',
      ),

      SpacerComponent(height: 16),

      CardComponent(
        title: 'Statistics',
        description:
            'Role: Flutter Developer\nExperience: 2+ years\nApplying for: IMumz',
      ),

      SpacerComponent(height: 24),

      ButtonComponent(
        label: 'Show Snackbar',
        action: ShowSnackbarAction(
          message: 'This is a server-driven snackbar!',
        ),
      ),

      ButtonComponent(label: 'Go Back', action: GoBackAction()),
    ],
  );
}
