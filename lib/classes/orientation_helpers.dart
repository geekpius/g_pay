import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

// Orientation options
// Extend it and handle more options, if you need them
enum ScreenOrientation {
  portraitOnly,
  landscapeOnly,
  // rotating,
}

// This function helps to build RouteSettings object for the orientation
RouteSettings rotationSettings(RouteSettings settings, ScreenOrientation rotation) {
  return RouteSettings(name: settings.name, arguments: rotation);
}

// NavigatorObserver which tracks the orientation
class NavigatorObserverWithOrientation extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    if (previousRoute!.settings.arguments is ScreenOrientation) {
      _setOrientation(ScreenOrientation.landscapeOnly);
    } else {
      // Portrait-only is the default option
      _setOrientation(ScreenOrientation.portraitOnly);
    }
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    if (route.settings.arguments is ScreenOrientation) {
      _setOrientation(ScreenOrientation.landscapeOnly);
    } else {
      _setOrientation(ScreenOrientation.portraitOnly);
    }
  }
}

// Set orientation
void _setOrientation(ScreenOrientation orientation) {
  late List<DeviceOrientation> orientations;
  switch (orientation) {
    case ScreenOrientation.portraitOnly:
      orientations = [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ];
      break;
    case ScreenOrientation.landscapeOnly:
      orientations = [
        DeviceOrientation.landscapeLeft,
      ];
      break;
  }
  SystemChrome.setPreferredOrientations(orientations);
}