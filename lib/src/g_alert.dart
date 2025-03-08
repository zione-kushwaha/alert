import 'package:flutter/material.dart';
import 'g_alert_content.dart';

class Alert {
  /// Shows a custom alert dialog with optional Success and Failure buttons.
  static Future<void> show({
    required BuildContext context,
    required String title,
    required String message,
    AlertType alertType = AlertType.custom,
    Widget? customWidget,
    Duration animationDuration = const Duration(milliseconds: 300),
    Color? backgroundColor,
    Color? textColor,
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    bool isDarkMode = false,
    double borderRadius = 10.0,
    bool canPop = true,
    void Function(bool)? onPopInvoked,

    // Success button (optional)
    VoidCallback? onSuccess,
    String successButtonText = 'Success',
    ButtonStyle? successButtonStyle,
    TextStyle? successButtonTextStyle,

    // Failure button (optional)
    VoidCallback? onFailure,
    String failureButtonText = 'Failure',
    ButtonStyle? failureButtonStyle,
    TextStyle? failureButtonTextStyle,

    // Icon customization
    double iconSize = 50.0,
    Color? iconColor,
  }) async {
    try {
      final theme = isDarkMode ? ThemeData.dark() : ThemeData.light();

      await showDialog(
        context: context,
        builder: (context) {
          return PopScope(
            canPop: canPop,
            onPopInvoked: onPopInvoked,
            child: Theme(
              data: theme,
              child: AlertDialog(
                backgroundColor: backgroundColor ?? theme.dialogBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                content: AlertContent(
                  title: title,
                  message: message,
                  alertType: alertType,
                  customWidget: customWidget,
                  titleStyle: titleStyle,
                  messageStyle: messageStyle,
                  textColor: textColor,
                  iconSize: iconSize,
                  iconColor: iconColor,
                ),
                actions: [
                  // Failure Button (if provided)
                  if (onFailure != null)
                    TextButton(
                      style: failureButtonStyle ??
                          TextButton.styleFrom(
                            foregroundColor:
                                Colors.red, // Default failure color
                          ),
                      onPressed: onFailure,
                      child: Text(
                        failureButtonText,
                        style: failureButtonTextStyle ??
                            TextStyle(
                              color: Colors.red, // Default failure text color
                            ),
                      ),
                    ),

                  // Success Button (if provided)
                  if (onSuccess != null)
                    TextButton(
                      style: successButtonStyle ??
                          TextButton.styleFrom(
                            foregroundColor:
                                Colors.green, // Default success color
                          ),
                      onPressed: onSuccess,
                      child: Text(
                        successButtonText,
                        style: successButtonTextStyle ??
                            TextStyle(
                              color: Colors.green, // Default success text color
                            ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      );
    } catch (e) {
      debugPrint("Error showing animated alert: $e");
    }
  }
}

enum AlertType {
  success,
  failure,
  question,
  invalid,
  timeout,
  custom,
}
