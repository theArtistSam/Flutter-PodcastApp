part of '../browse.dart';

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(),
      endDrawer: AppDrawer(),
    );
  }
}
