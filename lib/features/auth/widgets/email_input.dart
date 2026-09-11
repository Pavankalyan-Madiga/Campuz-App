import 'package:flutter/material.dart';
import 'package:mycamps/features/auth/widgets/email_validator.dart';


class EmailInput extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onSubmitted;

  const EmailInput({
    super.key,
    required this.controller,
    this.onSubmitted,
  });

  static const Color primary = Color(0xff5638D5);
  static const Color textColor = Color(0xff202124);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      validator: EmailValidator.validate,
      onFieldSubmitted: (_) {
        onSubmitted?.call();
      },
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
      decoration: InputDecoration(
        hintText: 's210980@rguktsklm.ac.in',
        hintStyle: const TextStyle(
          color: Color(0xffA9ADB6),
          fontSize: 14,
        ),
        prefixIcon: const Icon(
          Icons.email_outlined,
          color: Color(0xff747987),
          size: 21,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 17,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xffE5E5EC),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xffE5E5EC),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: primary,
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xffE5484D),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xffE5484D),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}