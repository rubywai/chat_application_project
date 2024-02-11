import 'package:chat_application_tuto/common/widget/action_button.dart';
import 'package:chat_application_tuto/common/widget/my_text_field.dart';
import 'package:chat_application_tuto/features/theme/surface_color.dart';
import 'package:chat_application_tuto/features/theme/text_extension.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final surfaceColor = theme.colorScheme.surface;
    final onSurfaceColor = theme.colorScheme.onSurface;
    final surfaceExtension = theme.extension<MySurfaceColor>()!;
    final profileIconBgColor = surfaceExtension.surfaceContainerHighest;
    final myTextExtension = theme.extension<MyTextExtension>()!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Profile',
          style: myTextExtension.subHeading1.copyWith(
            color: onSurfaceColor,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              _profileIcon(
                bgColor: profileIconBgColor,
                iconColor: onSurfaceColor,
              ),
              const SizedBox(height: 20,),
              const MyTextField(hintText: 'First Name (Required)'),
              const SizedBox(height: 8,),
              const MyTextField(hintText: 'Last Name (Optional)'),
              const SizedBox(height: 50,),
              ActionButton(text: 'Save', onPressed: (){

              })
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileIcon({
    required Color bgColor,
    required Color iconColor,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: ClipOval(
            child: Container(
              width: 100,
              height: 100,
              color: bgColor,
              child: const Icon(
                Icons.person,
                size: 56,
              ),
            ),
          ),
        ),
        Positioned(
          left: 60,
          top: 60,
          child: IconButton(
              onPressed: () {},
              icon:  Icon(
                Icons.add,
                color: iconColor,
              )),
        )
      ],
    );
  }
}
