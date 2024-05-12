// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoadingButtonWidget extends StatelessWidget {
  final bool isLoading;
  final bool invertColors;
  final void Function()? onPressed;
  final String label;

  const LoadingButtonWidget({
    Key? key,
    required this.isLoading,
    required this.invertColors,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Container(
            margin: const EdgeInsets.all(10),
            height: 50,
            alignment: Alignment.center,
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : TextButton(
            onPressed: onPressed,
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: invertColors ? Theme.of(context).primaryColor : Colors.white.withOpacity(0.8),
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Text(label,
                  style: TextStyle(
                    color: invertColors ? Colors.white : Theme.of(context).primaryColor,
                    fontSize: 25,
                    fontFamily: "Big Shoulders Display",
                  )),
            ),
          );
  }
}
