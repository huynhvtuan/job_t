import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_t/core/config/app_dimensions.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/others/space.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/core/config/resources/routes_manager.dart';
import 'package:job_t/core/config/resources/routes_manager.gr.dart';
import 'package:job_t/presentation/login/provider/login_provider.dart';
import 'package:job_t/presentation/widgets/common/custom_appbar.dart';
import 'package:job_t/presentation/widgets/common/custom_textfield.dart';
import 'package:job_t/presentation/widgets/common/default_button.dart';
import 'package:job_t/presentation/widgets/common/reusable_text.dart';
import 'package:provider/provider.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(builder: (context, loginNotifer, child) {
      return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: CustomAppbar(
              text: "Login",
              leading: GestureDetector(
                  onTap: () {
                    context.router.pop();
                  },
                  child: const Icon(CupertinoIcons.arrow_left)),
            )),
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppDimensions.normalize(10)),
          child: ListView(
            children: [
              Space.y1!,
              ReusableText(
                text: "Welcome Back!",
                style: AppText.h1b!,
              ),
              Space.y1!,
              const ReusableText(
                  text: "Fill the details to login to your account"),
              Space.y1!,
              CustomTextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: "Email",
                validator: (email) {
                  if (email!.isEmpty || !email.contains('@')) {
                    return "Please enter a valid email";
                  } else {
                    return null;
                  }
                },
              ),
              Space.y1!,
              CustomTextField(
                controller: _passwordController,
                hintText: "Password",
                obscureText: loginNotifer.obscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    loginNotifer.obscureText = !loginNotifer.obscureText;
                  },
                  child: Icon(
                    loginNotifer.obscureText
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: AppColor.darkGrey,
                  ),
                ),
                validator: (password) {
                  if (password!.isEmpty) {
                    return "Please enter a valid password";
                  } else {
                    return null;
                  }
                },
              ),
              Space.y1!,
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    context.router.pushNamed(RouteName.signUp);
                  },
                  child: const ReusableText(text: "Sign Up"),
                ),
              ),
              Space.y(AppDimensions.normalize(15))!,
              DefaultButton(
                title: "Login",
                onPressed: () {
                  context.router.replaceAll([const MainScreenRoute()]);
                },
              )
            ],
          ),
        ),
      );
    });
  }
}
