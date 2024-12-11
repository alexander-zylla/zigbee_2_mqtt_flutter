# zigbee_2_mqtt_flutter

A Flutter framework to integrate and interact with Zigbee devices through MQTT. This library simplifies the management and control of Zigbee devices in Flutter apps, providing an easy-to-use API for seamless device communication.

---

## Features
- 🏠 **Zigbee Device Control:** Effortlessly control Zigbee devices using MQTT.
- 🚀 **Modular and Extendable:** Easily integrate with existing Flutter apps.
- ⚡ **High Performance:** Optimized for real-time device communication.
- ✅ **Conventional Commits and CI/CD:** Integrated with tools like Husky for commit validation and Release Please for automated versioning.

---

## Getting Started

### Installation
Add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  zigbee_2_mqtt_flutter: ^1.0.0
```

Then run:

```bash
flutter pub get
```

---

### Usage

#### Initialize the Framework

```dart
import 'package:zigbee_2_mqtt_flutter/zigbee_2_mqtt_flutter.dart';

void main() {
  final zigbeeController = Zigbee2MqttController(
    mqttBroker: 'mqtt://your-broker-address',
    username: 'your-username',
    password: 'your-password',
  );

  zigbeeController.initialize();
  runApp(MyApp());
}
```

#### Control a Device

```dart
zigbeeController.publish(
  topic: 'zigbee2mqtt/device-id/set',
  payload: {
    "state": "ON",
  },
);
```

#### Listen to Device Updates

```dart
zigbeeController.subscribe(
  topic: 'zigbee2mqtt/device-id',
  onMessage: (message) {
    print('Device state: ${message}');
  },
);
```

---

## Development

### Commit Standards
This project uses **Conventional Commits** to ensure consistent commit messages. Husky is configured to validate commits locally before pushing.

### Setting Up Husky

To add Husky for commit hooks in your Flutter project, run this command:

```bash
dart run husky install
```

#### Example Commit Messages:
- `feat: add new device control API`
- `fix: resolve connection issue`
- `docs: update README with usage instructions`

To contribute, clone the repository and install dependencies:

```bash
git clone https://github.com/your-username/zigbee_2_mqtt_flutter.git
cd zigbee_2_mqtt_flutter
flutter pub get
```

### Release Process
Automated releases are managed with [Release Please](https://github.com/googleapis/release-please). Push changes with proper commit messages, and the CI pipeline will handle versioning and changelogs.

---

## Contributing
We welcome contributions! To get started:

1. Clone the repository.
2. Create a new branch for your feature or bugfix.
3. Commit your changes following the Conventional Commits guidelines.
4. Open a pull request with a clear description of your changes.

---

## License
This project is licensed under the [MIT License](LICENSE).

---

## Support
If you encounter any issues or have questions, feel free to open an issue or contact the maintainers.

Happy coding! 🎉
