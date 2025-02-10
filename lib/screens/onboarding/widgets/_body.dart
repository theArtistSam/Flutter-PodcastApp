part of '../onboarding.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Stack(
        children: [
          Image.asset(
            AppImages.bgLines,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 33.0,
                vertical: 51,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AppImages.appLogo),
                  const SizedBox(
                    height: 45,
                  ),
                  SizedBox(
                    width: 175,
                    child: Text(
                      "Episodic series of digital audio.",
                      style: AppTypography.h2m(),
                    ),
                  ),
                  const SizedBox(
                    height: 76,
                  ),
                  const AppTextfield(
                    hintText: "E-mail address",
                    icon: AppIcons.mail,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const AppTextfield(
                    hintText: "Password",
                    icon: AppIcons.key,
                    isPassword: true,
                  ),
                  const SizedBox(height: 7),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: AppTypography.b2(
                        color: AppTheme.orange,
                      ),
                    ),
                  ),
                  const Spacer(),
                  AppButton(
                    title: "Login",
                    onTap: () => AppRoutes.home.push(context),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppButton(
                    title: "Register new account",
                    onTap: () {},
                    isBordered: true,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
