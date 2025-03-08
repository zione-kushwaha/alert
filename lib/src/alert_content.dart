import 'package:flutter/material.dart';
import 'alert.dart'; // Import the AlertType enum

/// A private widget that builds the content of the alert dialog.
class AlertContent extends StatelessWidget {
  final String title;
  final String message;
  final AlertType alertType;
  final Widget? customWidget;
  final TextStyle? titleStyle;
  final TextStyle? messageStyle;
  final Color? textColor;
  final double iconSize;
  final Color? iconColor;

  const AlertContent({
    super.key,
    required this.title,
    required this.message,
    required this.alertType,
    this.customWidget,
    this.titleStyle,
    this.messageStyle,
    this.textColor,
    this.iconSize = 50.0,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildIconForAlertType(alertType),
        const SizedBox(height: 10),
        Text(
          title,
          style: titleStyle ??
              TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color:
                    textColor ?? Theme.of(context).textTheme.titleLarge?.color,
              ),
        ),
        const SizedBox(height: 10),
        Text(
          message,
          style: messageStyle ??
              TextStyle(
                fontSize: 16,
                color:
                    textColor ?? Theme.of(context).textTheme.bodyMedium?.color,
              ),
        ),
        if (customWidget != null) ...[
          const SizedBox(height: 10),
          customWidget!,
        ],
      ],
    );
  }

  /// Returns an icon based on the alert type.
  Widget _buildIconForAlertType(AlertType alertType) {
    switch (alertType) {
      case AlertType.success:
        return Icon(
          Icons.check_circle,
          color: iconColor ?? Colors.green,
          size: iconSize,
        );
      case AlertType.failure:
        return Icon(
          Icons.error,
          color: iconColor ?? Colors.red,
          size: iconSize,
        );
      case AlertType.question:
        return Icon(
          Icons.help,
          color: iconColor ?? Colors.blue,
          size: iconSize,
        );
      case AlertType.invalid:
        return Icon(
          Icons.warning,
          color: iconColor ?? Colors.orange,
          size: iconSize,
        );
      case AlertType.timeout:
        return Icon(
          Icons.timer_off,
          color: iconColor ?? Colors.grey,
          size: iconSize,
        );
      case AlertType.custom:
        return const SizedBox.shrink(); // No icon for custom type
    }
  }
}
