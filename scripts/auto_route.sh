# If you need to add a route to /lib/core/router/route_management.dart folder, after you added properly you need to run this command line on terminal.
#!/bin/bash
set -e

flutter clean
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs