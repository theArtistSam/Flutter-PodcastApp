part of '../author.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 367,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Column(
            children: [
              Container(
                height: 297,
                color: const Color(0xff02CB8F),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 24,
                    children: [
                      Text(
                        "Mary Beth Keane",
                        style: AppTypography.h1b(),
                      ),
                      Row(
                        spacing: 28,
                        children: [
                          SvgPicture.asset(AppIcons.facebook),
                          SvgPicture.asset(AppIcons.instagram),
                          SvgPicture.asset(AppIcons.twitter)
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.mic,
                            height: 16,
                            color: AppTheme.textWhite,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Podcasts: 7 286",
                            style: AppTypography.b2(),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: AppTheme.accent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 25,
                  ),
                  child: Row(
                    spacing: 6,
                    children: [
                      SvgPicture.asset(AppIcons.starFilled),
                      SvgPicture.asset(AppIcons.starFilled),
                      SvgPicture.asset(AppIcons.starFilled),
                      SvgPicture.asset(AppIcons.starHalf),
                      SvgPicture.asset(AppIcons.star),
                      Text(
                        "3.5",
                        style: AppTypography.b2(),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            fit: BoxFit.cover,
            height: 245,
            AppImages.authorImg3,
          )
        ],
      ),
    );
  }
}
