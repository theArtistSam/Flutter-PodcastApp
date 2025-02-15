import 'package:flutter/material.dart';
import 'package:podcast/configs/app_icons.dart';
import 'package:podcast/configs/app_theme.dart';
import 'package:podcast/configs/app_typography.dart';
import 'package:podcast/widgets/core/app_icon_button.dart';

class PodcastEpisodeTile extends StatelessWidget {
  final String title;
  final String dateCreated;
  final String duration;
  final int size;
  final String? description;
  const PodcastEpisodeTile({
    super.key,
    required this.title,
    required this.dateCreated,
    required this.duration,
    required this.size,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppTheme.accent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: description != null
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: [
            AppIconButton(
              icon: AppIcons.pause,
              onTap: () {},
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: AppTypography.b2(),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            dateCreated,
                            style: AppTypography.l1(color: AppTheme.textGrey),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            duration,
                            style: AppTypography.l1(color: AppTheme.textGrey),
                          ),
                          const SizedBox(height: 7),
                          Text(
                            "$size mb",
                            style: AppTypography.l1(color: AppTheme.textGrey),
                          )
                        ],
                      ),
                      const SizedBox(width: 16),
                      AppIconButton(
                        icon: AppIcons.download,
                        onTap: () {},
                        isBordered: true,
                        isShadow: false,
                        color: Colors.transparent,
                      )
                    ],
                  ),
                  description != null
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            description!,
                            style: AppTypography.l1(
                              color: AppTheme.textGrey,
                            ),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
