import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/core/widgets/custom_app_bar.dart';
import 'package:task/core/widgets/custom_text_field.dart';
import 'package:task/features/auth/presentation/views/widgets/custom_text_bottom.dart';
import 'package:task/features/settings/data/profile_repo.dart';
import 'package:task/features/settings/presentation/views/widgets/edit_info_field.dart';

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
    passwordController =TextEditingController();
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
  Widget build(BuildContext context) {

    final kHorizontal = MediaQuery.of(context).size.width ;
    final kVertical = MediaQuery.of(context).size.width ;
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: false,
        showBack: true,
        title: 'Edit Account',
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: kHorizontal /15, vertical: kVertical/10),
        child: Column(
          children: [
            EditInfoField(
              title: 'Name',
              hintText: '',
              textInputType: TextInputType.name,
              controller: nameController,
            ),
            SizedBox(height: 30),
            EditInfoField(
              readOnly: true,
              title: 'Email',
              hintText: '',
              textInputType: TextInputType.emailAddress,
              controller: emailController,
            ),
            SizedBox(height: 30),
            EditInfoField(
              title: 'Password',
              hintText: '',
              textInputType: TextInputType.visiblePassword,
              controller: passwordController,
              obscureText: true,
            ),
            Spacer(),
            CustomTextBottom(text: 'Save')

          ],
        ),
      ),
    );
  }
}
