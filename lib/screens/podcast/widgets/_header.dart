part of '../podcast.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.sizeOf(context).width;
    return Stack(
      children: [
        Image.asset(
          AppImages.musicBg,
          width: double.infinity,
          height: 350,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                AppImages.author1,
              ),
              Image.asset(
                AppImages.author2,
              )
            ],
          ),
        ),
        SafeArea(
          child: Center(
            child: SizedBox(
              width: w * .75,
              child: Column(
                children: [
                  Text(
                    "About flow and our motiations",
                    textAlign: TextAlign.center,
                    style: AppTypography.h2m(),
                  ),
                  const SizedBox(height: 26),
                  Text(
                    "John Doe & Amanda Smith",
                    style: AppTypography.b2(color: AppTheme.textGrey),
                  ),
                  const SizedBox(height: 26),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppIcons.rotateBackward,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      AppIconButton(
                        radius: 50,
                        iH: 19,
                        icon: AppIcons.play,
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppIcons.rotateForward,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
