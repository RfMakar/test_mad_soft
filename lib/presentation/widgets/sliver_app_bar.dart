import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_mad_soft/internal/UI/app_assets.dart';
import 'package:test_mad_soft/internal/UI/app_colors.dart';
import 'package:test_mad_soft/internal/UI/app_text_style.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
      builder: (context, sliverConstraints) {
        final scroll = sliverConstraints.scrollOffset;
        return SliverAppBar(
          centerTitle: true,
          title: scroll > 150
              ? Text(
                  'Объекты',
                  style: AppTextStyles.s22w400h1B1B1F,
                )
              : null,
          actions: [
            scroll > 150
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SvgPicture.asset(
                      AppAssets.iconInfo,
                      height: 24,
                      width: 24,
                    ),
                  )
                : Container(),
          ],
          leading: scroll > 150 ? const Icon(Icons.search, size: 24) : null,
          expandedHeight: 180,
          floating: false,
          pinned: true,
          snap: false,
          flexibleSpace: FlexibleSpaceBarWidget(),
        );
      },
    );
  }
}

class FlexibleSpaceBarWidget extends StatelessWidget {
  const FlexibleSpaceBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Container(
        color: AppColors.hexEEF2FF,
        child: Padding(
          padding: const EdgeInsets.only(top: 70, right: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Объекты',
                style: AppTextStyles.s32w400h1B1B1F,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: TextFormField(
                  autofocus: false,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.hexFFFFFF,
                    prefixIcon: const Icon(Icons.search, size: 24),
                    suffix: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: SvgPicture.asset(AppAssets.iconLabel),
                    ),
                    hintText: 'Найти...',
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onFieldSubmitted: (String value) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
