import 'package:sdui_models/sdui_models.dart';

ScreenModel buildHomeScreen() {
  return VerticalScreenModel(
    screenTitle: 'Home',
    components: [
      TitleComponent(title: 'Welcome to SDUI App'),

      ImageBannerComponent(
        imageUrl: 'https://i.postimg.cc/0jrtBTJZ/logo-(2).png',
      ),

      SpacerComponent(height: 16),

      HorizontalListComponent(
        items: List.generate(
          4,
          (index) => CardComponent(
            title: 'Card ${index + 1}',
            description: 'This is IMumz\'s card ${index + 1}',
          ),
        ),
      ),

      SpacerComponent(height: 24),

      ButtonComponent(
        label: 'Go to Profile',
        action: NavigateAction(screen: 'profile'),
      ),

      ButtonComponent(
        label: 'Go to Settings',
        action: NavigateAction(screen: 'settings'),
      ),
    ],
  );
}
