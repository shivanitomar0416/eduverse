import 'package:flutter/material.dart';
import 'package:eduverse/core/theme/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double borderRadius;
  final Color? backgroundColor;
  final bool hasBorder;
  final VoidCallback? onTap;

  const CustomContainer({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius = 12,
    this.backgroundColor,
    this.hasBorder = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;

    // Use surface color from theme if backgroundColor is null
    final effectiveColor = backgroundColor ?? theme.colorScheme.surface;
    
    // Determine border color based on theme and if a border is requested
    final borderColor = hasBorder
        ? (isDarkMode
            ? AppColors.disabled // Using a dark-mode appropriate grey
            : AppColors.divider) // Using your light-mode divider/border color
        : Colors.transparent;

    final container = Container(
      margin: margin,
      padding: padding ?? const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: effectiveColor,
        borderRadius: BorderRadius.circular(borderRadius),
        // Fix: Use the determined borderColor for the BorderSide.
        border: Border.all(color: borderColor),
      ),
      child: child,
    );

    if (onTap != null) {
      // Use GestureDetector instead of InkWell if you don't need splash/ripple effects
      // or ensure the Container itself isn't masking the InkWell's decoration.
      return InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        child: container,
      );
    }
    return container;
  }
}