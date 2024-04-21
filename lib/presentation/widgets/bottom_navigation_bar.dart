import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_mad_soft/presentation/state/complexes_store.dart';
import 'package:test_mad_soft/config/UI/app_assets.dart';
import 'package:test_mad_soft/config/UI/app_colors.dart';
import 'package:test_mad_soft/initialize_dependencie.dart';

class BottomNavigationBarApp extends StatelessWidget {
  const BottomNavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    final store = sl<ComplexesStore>();
    return Observer(
      builder: (_) => NavigationBar(
        onDestinationSelected: (int index) => store.currentPageIndex = index,
        selectedIndex: store.currentPageIndex,
        destinations: [
          NavigationDestination(
            selectedIcon: _selectionIcon(AppAssets.iconObject),
            icon: _unSelectedIcon(AppAssets.iconObject),
            label: 'Объекты',
          ),
          NavigationDestination(
            selectedIcon: _selectionIcon(AppAssets.iconSet),
            icon: _unSelectedIcon(AppAssets.iconSet),
            label: 'Сеты',
          ),
          NavigationDestination(
            selectedIcon: _selectionIcon(AppAssets.iconUser),
            icon: _unSelectedIcon(AppAssets.iconUser),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }

  Widget _selectionIcon(String asset) {
    return SvgPicture.asset(
      asset,
      height: 24,
      width: 24,
      colorFilter: ColorFilter.mode(
        AppColors.hex4A6FF4,
        BlendMode.srcIn,
      ),
    );
  }

  Widget _unSelectedIcon(String asset) {
    return SvgPicture.asset(
      asset,
      height: 24,
      width: 24,
      colorFilter: ColorFilter.mode(
        AppColors.hex65676E,
        BlendMode.srcIn,
      ),
    );
  }
}
