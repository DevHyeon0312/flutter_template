import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class GoogleLoginButton extends StatefulWidget {
  const GoogleLoginButton({
    super.key,
    this.onPressed,
    this.width = 200,
  });
  final VoidCallback? onPressed;
  final double width;

  @override
  State<GoogleLoginButton> createState() => _GoogleLoginButtonState();
}

class _GoogleLoginButtonState extends State<GoogleLoginButton> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: isDarkMode
            ? BorderSide.none
            : const BorderSide(
                color: Colors.black,
                width: 1,
              ),
      ),
      child: InkWell(
        onTap: widget.onPressed,
        borderRadius:
            isDarkMode ? BorderRadius.circular(8) : BorderRadius.circular(8),
        overlayColor: MaterialStateProperty.all(Colors.grey.withOpacity(0.5)),
        child: Container(
          width: widget.width,
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/svg/google-logo.svg',
                width: 32,
                height: 32,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    // color: widget.isDarkMode ? Colors.white : Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  textScaler: TextScaler.noScaling,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
