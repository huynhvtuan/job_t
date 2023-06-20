import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_t/core/config/app_dimensions.dart';
import 'package:job_t/core/config/others/app_typography.dart';
import 'package:job_t/core/config/others/space.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/presentation/registration/provider/registration_provider.dart';
import 'package:job_t/presentation/widgets/common/custom_appbar.dart';
import 'package:job_t/presentation/widgets/common/custom_textfield.dart';
import 'package:job_t/presentation/widgets/common/default_button.dart';
import 'package:job_t/presentation/widgets/common/reusable_text.dart';
import 'package:provider/provider.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegistrationProvider(),
      child: Consumer<RegistrationProvider>(
          builder: (context, registrationNotifer, child) {
        return Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: CustomAppbar(
                text: "Sign Up",
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
                  controller: _fullNameController,
                  hintText: "Full name",
                  validator: (name) {
                    if (name!.isEmpty || !name.contains('@')) {
                      return "Please enter a valid name";
                    } else {
                      return null;
                    }
                  },
                ),
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
                  obscureText: registrationNotifer.obscureText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      registrationNotifer.obscureText =
                          !registrationNotifer.obscureText;
                    },
                    child: Icon(
                      registrationNotifer.obscureText
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: AppColor.darkGrey,
                    ),
                  ),
                  validator: (password) {
                    if (registrationNotifer.passwordValidator(password ?? "")) {
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
                      context.router.pop();
                    },
                    child: const ReusableText(text: "Login"),
                  ),
                ),
                Space.y(AppDimensions.normalize(15))!,
                DefaultButton(
                  title: "Sign Up",
                  onPressed: () {},
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
