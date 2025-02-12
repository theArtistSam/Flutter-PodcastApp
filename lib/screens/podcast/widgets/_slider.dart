part of '../podcast.dart';

class _Slider extends StatelessWidget {
  final Function(double)? onChanged;
  const _Slider({this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          trackHeight: 3,
          activeTrackColor: AppTheme.orange,
          inactiveTrackColor: AppTheme.borderColor,
          thumbColor: Colors.white,
          overlayColor: AppTheme.orange,
          thumbShape: const RoundSliderThumbShape(
            enabledThumbRadius: 8,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Slider(
            value: 0.5,
            onChanged: onChanged ?? (value) {},
          ),
        ),
      ),
    );
  }
}
