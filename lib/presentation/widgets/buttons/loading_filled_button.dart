import 'package:flutter/material.dart';

class LoadingFilledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isLoading;
  final String text;

  const LoadingFilledButton({
    super.key,
    required this.onPressed,
    required this.isLoading,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: AnimatedSize(
        duration: const Duration(
          milliseconds: 250,
        ),
        child: isLoading
            ? const SizedBox.square(
                dimension: 15.0,
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                  color: Colors.white,
                ),
              )
            : SizedBox(
                width: 100.0,
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                ),
              ),
      ),
    );
  }
}
