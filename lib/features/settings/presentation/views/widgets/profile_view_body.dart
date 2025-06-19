import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/core/widgets/custom_app_bar.dart';
import 'package:task/core/widgets/custom_text_field.dart';
import 'package:task/features/auth/presentation/views/widgets/custom_text_bottom.dart';
import 'package:task/features/settings/data/profile_repo.dart';
import 'package:task/features/settings/presentation/views/widgets/edit_info_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  bool isEditing = false;
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  _ProfileViewBodyState();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    loadUserDataToControllers();
  }

  void loadUserDataToControllers() async {
    final user = await ProfileRepo().loadUserData();
    if (user != null) {
      setState(() {
        nameController.text = user.name;
        emailController.text = user.email;
        passwordController.text = user.password;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    final kHorizontal = MediaQuery.of(context).size.width;
    final kVertical = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: false,
        showBack: true,
        title: local.editAccount,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontal / 15, vertical: kVertical / 10),
        child: Column(
          children: [
            EditInfoField(
              title: local.userName,
              hintText: '',
              textInputType: TextInputType.name,
              controller: nameController,
            ),
            SizedBox(height: 30),
            EditInfoField(
              readOnly: true,
              title: local.email,
              hintText: '',
              textInputType: TextInputType.emailAddress,
              controller: emailController,
            ),
            SizedBox(height: 30),
            EditInfoField(
              title: local.password,
              hintText: '',
              textInputType: TextInputType.visiblePassword,
              controller: passwordController,
              obscureText: false,
            ),
            Spacer(),
            CustomTextBottom(
                onPressed: () async {
                  final updatedUser = await ProfileRepo().updateUserData(
                    name: nameController.text,
                    password: passwordController.text,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(local.profileInfoUpdated)),
                  );
                },
                text: local.save
            )
          ],
        ),
      ),
    );
  }
}