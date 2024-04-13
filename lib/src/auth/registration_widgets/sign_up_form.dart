import 'package:flutter/material.dart';
import 'package:flutter_epam_kazakh/core/constant/color.dart';
import 'package:flutter_epam_kazakh/core/common/widgets/animated_custom_button.dart';

import 'package:flutter_epam_kazakh/core/common/widgets/custom_text.dart';
import 'package:flutter_epam_kazakh/core/common/widgets/custom_text_field.dart';
import 'package:flutter_epam_kazakh/core/router/custom_router.dart';

import 'package:flutter_epam_kazakh/src/auth/login_widgets/login.dart';
import 'package:flutter_epam_kazakh/generated/locale_keys.g.dart';
import 'package:go_router/go_router.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});
  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> with TickerProviderStateMixin {
  late FocusNode _focusNodeFieldOne;
  late FocusNode _focusNodeFieldTwo;
  bool disabled = true;
  bool isValidPassword = false;
  bool isValidEmail = false;
  late AnimationController _controller;
  String _email = '';
  String _password = '';
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _focusNodeFieldOne = FocusNode();
    _focusNodeFieldTwo = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _focusNodeFieldOne.dispose();
    _focusNodeFieldTwo.dispose();
  }

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  bool isPasswordValid(String inputpassword) => inputpassword.length >= 6;

  bool isEmailValid(String inputemail) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))';
    RegExp regexp = RegExp(pattern);
    return regexp.hasMatch(inputemail);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(tag: 'ishak', child: Image.asset('assets/logo_tipa.png')),
        const CustomText.darkBlueTitle('Registration'),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          labelText: LocaleKeys.email,
          focusNode: _focusNodeFieldOne,
          onChanged: (userEmail) {
            _email = userEmail;
            if (isValidEmail && isValidPassword) {
              disabled = false;
              _controller.forward();
            } else {
              disabled = true;
              _controller.reverse();
            }
          },
          validator: (email) {
            isValidEmail = isEmailValid(email);
            return isValidEmail;
          },
          isPassword: false,
          inputType: TextInputType.emailAddress,
          onSubmitted: (_) {
            _fieldFocusChange(context, _focusNodeFieldOne, _focusNodeFieldTwo);
          },
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          validator: (password) {
            isValidPassword = isPasswordValid(password);
            return isValidPassword;
          },
          labelText: LocaleKeys.password,
          focusNode: _focusNodeFieldTwo,
          onChanged: (password) {
            _password = password;
            if (isValidEmail && isValidPassword) {
              disabled = false;
              _controller.forward();
            } else {
              disabled = true;
              _controller.reverse();
            }
          },
          isPassword: true,
          onSubmitted: (password) {},
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        AnimatedCustomButton(
          LocaleKeys.register,
          controller: _controller,
          onPressed: () {},
          width: MediaQuery.of(context).size.width / 1.4,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 33,
        ),
        TextButton(
            onPressed: () {
              context.push(LoginPage.routeName);
            },
            child: const CustomText(
              LocaleKeys.alreadyRegistered,
              fontWeight: FontWeight.w600,
              color: borderBlueColor,
            )),
      ],
    );
  }
}
