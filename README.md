# sdui_app

Server-Driven UI (SDUI) App

This project demonstrates a Server-Driven UI (SDUI) architecture using a Dart backend server and a Flutter client, where the server defines the UI and the client renders it dynamically from JSON.

Project Structure
sdui_app/
── sdui_models/   : Shared models
── sdui_server/   : Dart backend server
── sdui_client/   : Flutter application


*How to Run the Server*

1. Open a terminal and navigate to the server directory:
    cd sdui_app/sdui_server

2. Install dependencies:
    dart pub get

3. Run the server:
    dart run

The server will start on:
http://localhost:8080


*How to Run the Flutter App*

The Flutter app is tested on an Android Emulator.
1. Start an Android emulator.
2. Open another terminal and navigate to the Flutter client:
    cd sdui_app/sdui_client
3. Install dependencies:
    flutter pub get
4. Run the app:
    flutter run

The app will load the Home screen dynamically from the server.


*Setup Notes*

The Flutter app communicates with the local server using:
http://10.0.2.2:8080
(This is the standard alias for localhost on Android emulators.)

HTTP (cleartext) traffic is enabled in AndroidManifest.xml for local development.

The server must be running before starting the Flutter app.

*Expected Flow*

App opens → Home screen loads dynamically
Navigate to Profile and Settings using server-defined actions
Snackbar, back navigation, and URL actions work as expected


*Author*

Garvit
Flutter Developer
