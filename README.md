# Dotlynx Task

This is a Flutter task developed for DotLynx.


## Application Setup

### Prerequisites

Before getting started with this Flutter application, make sure you have the following prerequisites:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) installed.
- An integrated development environment (IDE) like Android Studio or Visual Studio Code.
- Git for version control.


### Project Setup

To get started with this project, follow these steps:

1. Clone the repository.
2. Install Flutter and Dart if not already installed.
3. Run `flutter pub get` to get the project dependencies.
4. Run the project using `flutter run`.


## Publishing APK

https://drive.google.com/file/d/1K_iCdAnXXUJ1zmoRyXHkcwKCiGVyCNJ4/view?usp=share_link


## Design Decisions

This Flutter application follows the following design principles:

- **Clean Architecture:** We've organized the project into layers such as data, domain, and presentation to maintain separation of concerns.

- **State Management:** We use the [flutter_bloc](https://pub.dev/packages/flutter_bloc) library for managing the application's state and business logic.

- **UI Components:** We've used [flutter_svg](https://pub.dev/packages/flutter_svg) for SVG rendering, and [cached_network_image](https://pub.dev/packages/cached_network_image) for efficient image loading.

- **User Experience:** We've incorporated [pull_to_refresh](https://pub.dev/packages/pull_to_refresh) for pull-to-refresh functionality and [flutter_spinkit](https://pub.dev/packages/flutter_spinkit) for loading spinners.

- **Network Requests:** The application utilizes the [dio](https://pub.dev/packages/dio) package for making HTTP requests.

- **Connectivity:** For network connectivity and internet connection checking, we use [connectivity_plus](https://pub.dev/packages/connectivity_plus) and [internet_connection_checker](https://pub.dev/packages/internet_connection_checker).

- **Responsiveness:** We've designed the application to be responsive on various screen sizes using [responsive_framework](https://pub.dev/packages/responsive_framework).

## Used Packages

Here is a list of the third-party packages used in this project along with their versions:

- **page_transition: ^2.0.9**
- **dio: ^4.0.6**
- **flutter_bloc: ^8.1.3**
- **equatable: ^2.0.5**
- **shared_preferences: ^2.2.2**
- **flutter_svg: ^2.0.9**
- **flutter_spinkit: ^5.2.0**
- **connectivity_plus: ^5.0.1**
- **internet_connection_checker: ^1.0.0+1**
- **pull_to_refresh: ^2.0.0**
- **responsive_framework: ^0.1.9**
- **cached_network_image: ^3.3.0**

Please make sure to add these packages to your `pubspec.yaml` file to ensure the project's compatibility and functionality.

