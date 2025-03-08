import 'package:flutter/material.dart';
import 'package:g_alert/g_alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alerts Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: AnimatedAlertExample(),
    );
  }
}

class AnimatedAlertExample extends StatelessWidget {
  const AnimatedAlertExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Action Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertButton(
              title: 'Success!',
              message: 'Your action was successful.',
              alertType: AlertType.success,
              buttonText: 'Success Alert',
              onSuccess: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Action completed successfully!')),
                );
              },
              buttonStyle: TextButton.styleFrom(
                foregroundColor: Colors.green,
              ),
            ),
            AlertButton(
              title: 'Invalid!',
              message: 'Your action is not valid.',
              alertType: AlertType.invalid,
              buttonText: 'Invalid Alert',
              onFailure: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Action failed!')),
                );
              },
              buttonStyle: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
            ),
            AlertButton(
              title: 'Failure!',
              message: 'Your action failed.',
              alertType: AlertType.failure,
              buttonText: 'Failure Alert',
              onFailure: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Action failed!')),
                );
              },
              buttonStyle: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
            ),
            AlertButton(
              title: 'Timeout!',
              message: 'Your Timeout!',
              alertType: AlertType.timeout,
              buttonText: 'Timeout Alert',
              onFailure: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Action failed!')),
                );
              },
              buttonStyle: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
            ),
            AlertButton(
              title: 'Error!',
              message: 'Your custom text',
              alertType: AlertType.custom,
              buttonText: 'Custom Alert',
              onFailure: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Action failed!')),
                );
              },
              buttonStyle: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
            ),
            AlertButton(
              title: 'Confirm Action',
              message: 'Are you sure you want to perform this action?',
              alertType: AlertType.question,
              buttonText: 'Question Alert',
              onSuccess: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Action successful!')),
                );
              },
              onFailure: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Action failed!')),
                );
              },
              successButtonText: 'Yes',
              failureButtonText: 'No',
              successButtonStyle: TextButton.styleFrom(
                foregroundColor: Colors.green,
              ),
              failureButtonStyle: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AlertButton extends StatelessWidget {
  final String title;
  final String message;
  final AlertType alertType;
  final String buttonText;
  final VoidCallback? onSuccess;
  final VoidCallback? onFailure;
  final String? successButtonText;
  final String? failureButtonText;
  final ButtonStyle? buttonStyle;
  final ButtonStyle? successButtonStyle;
  final ButtonStyle? failureButtonStyle;

  const AlertButton({
    super.key,
    required this.title,
    required this.message,
    required this.alertType,
    required this.buttonText,
    this.onSuccess,
    this.onFailure,
    this.successButtonText,
    this.failureButtonText,
    this.buttonStyle,
    this.successButtonStyle,
    this.failureButtonStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Alert.show(
          context: context,
          title: title,
          message: message,
          alertType: alertType,
          onSuccess: onSuccess,
          onFailure: onFailure,
          successButtonText: successButtonText ?? 'OK',
          failureButtonText: failureButtonText ?? 'Cancel',
          successButtonStyle: successButtonStyle,
          failureButtonStyle: failureButtonStyle,
        );
      },
      child: Text(buttonText),
    );
  }
}
