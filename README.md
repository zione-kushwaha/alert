# Alert Package

A highly customizable and easy-to-use alert dialog package for Flutter. This package provides a simple way to display beautiful alert dialogs with support for success, failure, and custom alerts. Perfect for apps that need a clean and consistent way to show messages to users.

## Features

- **Customizable Alerts**: Display alerts with custom titles, messages, and icons.
- **Predefined Alert Types**: Use built-in alert types like `success`, `failure`, `question`, `invalid`, and `timeout`.
- **Custom Widgets**: Add custom widgets to your alerts for advanced use cases.
- **Dark Mode Support**: Automatically adapts to the app's theme or manually set dark/light mode.
- **Customizable Buttons**: Add success and failure buttons with custom text and styles.
- **Flexible Styling**: Customize colors, text styles, and border radius.

## Getting Started

Add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  alert: ^1.0.0
Then, run flutter pub get to install the package.

Usage
Basic Alert
Here’s how to display a simple alert:

dart
Copy
import 'package:alert/alert.dart';

Alert.show(
  context: context,
  title: 'Success',
  message: 'Your action was successful!',
  alertType: AlertType.success,
);
Alert with Buttons
You can add success and failure buttons to your alert:

dart
Copy
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
Custom Alert
For more advanced use cases, you can add custom widgets:

dart
Copy
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
Dark Mode
You can enable dark mode for your alerts:

dart
Copy
Alert.show(
  context: context,
  title: 'Dark Mode Alert',
  message: 'This alert is in dark mode.',
  isDarkMode: true,
);
Customization
Alert Types
The package supports the following alert types:

AlertType.success

AlertType.failure

AlertType.question

AlertType.invalid

AlertType.timeout

AlertType.custom

Customizing Styles
You can customize the appearance of your alerts:

dart
Copy
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
Customizing Buttons
You can customize the success and failure buttons:

dart
Copy
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
Additional Information
Contributing
Contributions are welcome! If you find a bug or want to suggest a feature, please open an issue on the GitHub repository. If you’d like to contribute code, feel free to submit a pull request.

License
This package is licensed under the MIT License. See the LICENSE file for details.

Support
If you have any questions or need help, feel free to reach out:

Email: your.email@example.com

GitHub Issues: Open an Issue

Copy

---

### **Key Sections Explained**

1. **Title and Description**:
   - A short and catchy title.
   - A brief description of what the package does.

2. **Features**:
   - Highlight the key features of your package.

3. **Getting Started**:
   - Instructions on how to install the package.

4. **Usage**:
   - Provide clear and concise examples of how to use the package.

5. **Customization**:
   - Show how users can customize the package to fit their needs.

6. **Additional Information**:
   - Include links to the GitHub repository, license, and support options.

---

### **Next Steps**

1. Replace `yourusername` and `your.email@example.com` with your actual GitHub username and email.
2. Add a `LICENSE` file to your project (e.g., MIT License).
3. Update the `CHANGELOG.md` file with version history.
4. Publish your package to **pub.dev**.
```
