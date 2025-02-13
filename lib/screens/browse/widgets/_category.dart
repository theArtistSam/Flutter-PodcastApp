part of '../browse.dart';

class _Category extends StatelessWidget {
  final String title;
  final String icon;
  final bool isSelected;
  final VoidCallback? onTap;
  const _Category({
    required this.title,
    required this.icon,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 56,
            height: 56,
            alignment: Alignment.center,
            decoration: decoration(),
            child: SvgPicture.asset(
              icon,
              height: 22,
              color: isSelected ? AppTheme.textWhite : AppTheme.textGrey,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: AppTypography.l1m(
            color: isSelected ? AppTheme.textWhite : AppTheme.textGrey,
          ),
        ),
      ],
    );
  }

  BoxDecoration decoration() {
    if (isSelected) {
      return BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF28282D).withOpacity(.25), // 100% at the top
            const Color(0xFFFFFFFF).withOpacity(0.2), // 80% at the bottom
          ],
        ),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: AppTheme.borderColor),
      );
    }
    return BoxDecoration(
      color: AppTheme.accent,
      borderRadius: BorderRadius.circular(100),
    );
  }
}
