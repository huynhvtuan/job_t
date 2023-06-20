import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:job_t/core/config/resources/assets.gen.dart';
import 'package:job_t/presentation/widgets/common/custom_appbar.dart';
import 'package:job_t/presentation/widgets/drawer/drawer_icon.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomAppbar(
            leading: const DrawerIcon(),
            actions: [
              CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(
                    Assets.images.user.path,
                  ))
            ],
          ),
        ),
      ),
      body: Container(),
    );
  }
}
