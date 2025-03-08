# G_Alert Package

A highly customizable and easy-to-use alert dialog package for Flutter. This package provides a simple way to display beautiful alert dialogs with support for success, failure, and custom alerts. Perfect for apps that need a clean and consistent way to show messages to users.

## ✨ Features

- **Customizable Alerts**: Display alerts with custom titles, messages, and icons.
- **Predefined Alert Types**: Use built-in alert types like `success`, `failure`, `question`, `invalid`, and `timeout`.
- **Custom Widgets**: Add custom widgets to your alerts for advanced use cases.
- **Dark Mode Support**: Automatically adapts to the app's theme or manually set dark/light mode.
- **Customizable Buttons**: Add success and failure buttons with custom text and styles.
- **Flexible Styling**: Customize colors, text styles, and border radius.

## 📦 Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  g_alert: ^0.0.2
```

Then, run:

```sh
flutter pub get
```

## 🚀 Usage

### 🔹 Basic Alert

```dart
import 'package:g_alert/g_alert.dart';

Alert.show(
  context: context,
  title: 'Success',
  message: 'Your action was successful!',
  alertType: AlertType.success,
);
```

### 🔹 Alert with Buttons

```dart
Alert.show(
  context: context,
  title: 'Confirm Action',
  message: 'Are you sure you want to delete this item?',
  alertType: AlertType.question,
  onSuccess: () {
    print('Item deleted');
  },
  onFailure: () {
    print('Deletion canceled');
  },
);
```

### 🔹 Custom Alert

```dart
Alert.show(
  context: context,
  title: 'Custom Alert',
  message: 'This is a custom alert with a widget below.',
  customWidget: Container(
    padding: EdgeInsets.all(10),
    color: Colors.blue,
    child: Text(
      'Custom Widget',
      style: TextStyle(color: Colors.white),
    ),
  ),
);
```

### 🔹 Dark Mode

```dart
Alert.show(
  context: context,
  title: 'Dark Mode Alert',
  message: 'This alert is in dark mode.',
  isDarkMode: true,
);
```

## 🎨 Customization

### 🔹 Alert Types

The package supports the following alert types:

- `AlertType.success`
- `AlertType.failure`
- `AlertType.question`
- `AlertType.invalid`
- `AlertType.timeout`
- `AlertType.custom`

### 🔹 Customizing Styles

```dart
Alert.show(
  context: context,
  title: 'Styled Alert',
  message: 'This alert has custom styles.',
  backgroundColor: Colors.purple,
  textColor: Colors.white,
  titleStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  messageStyle: TextStyle(fontSize: 18),
  borderRadius: 20.0,
);
```

### 🔹 Customizing Buttons

```dart
Alert.show(
  context: context,
  title: 'Custom Buttons',
  message: 'This alert has custom buttons.',
  onSuccess: () {
    print('Success button pressed');
  },
  successButtonText: 'Okay',
  successButtonStyle: TextButton.styleFrom(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
  ),
  onFailure: () {
    print('Failure button pressed');
  },
  failureButtonText: 'Cancel',
  failureButtonStyle: TextButton.styleFrom(
    backgroundColor: Colors.red,
    foregroundColor: Colors.white,
  ),
);
```

## 📸 Screenshots

Here are some screenshots of **G_Alert** in action:

<div align="center">
  <table>
    <tr>
      <td><img src="https://github.com/zione-kushwaha/g_alert/raw/main/assets/images/g1.jpg" width="200"></td>
      <td><img src="https://github.com/zione-kushwaha/g_alert/raw/main/assets/images/g2.jpg" width="200"></td>
      <td><img src="https://github.com/zione-kushwaha/g_alert/raw/main/assets/images/g3.jpg" width="200"></td>
    </tr>
    <tr>
      <td><img src="https://github.com/zione-kushwaha/g_alert/raw/main/assets/images/g4.jpg" width="200"></td>
      <td><img src="https://github.com/zione-kushwaha/g_alert/raw/main/assets/images/g5.jpg" width="200"></td>
      <td><img src="https://github.com/zione-kushwaha/g_alert/raw/main/assets/images/g6.jpg" width="200"></td>
    </tr>
  </table>
</div>

## 🎥 Demo Video

Watch the demo video here:

[![Watch the demo](assets/video/g_alert_video.mp4)]

## 🤝 Contributing

Contributions are welcome! If you find a bug or want to suggest a feature, please open an issue on the [GitHub repository](https://github.com/zione-kushwaha/g_alert.git).

## 📜 License

This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## 💬 Support

For any issues or questions, reach out via:

- **Email:** zionekushwaha@gmail.com
- **GitHub Issues:** [Open an Issue](https://github.com/zione-kushwaha/g_alert/issues)

---

Made with ❤️ by [Zione Kushwaha](https://github.com/zione-kushwaha) 🚀
