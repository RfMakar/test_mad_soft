import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_mad_soft/domain/state/complexes_store.dart';
import 'package:test_mad_soft/internal/UI/app_colors.dart';
import 'package:test_mad_soft/internal/utils/sl.dart';
import 'package:test_mad_soft/presentation/widgets/bottom_navigation_bar.dart';
import 'package:test_mad_soft/presentation/widgets/complex_card.dart';
import 'package:test_mad_soft/presentation/widgets/sliver_app_bar.dart';

@RoutePage()
class ObjectsScreen extends StatelessWidget {
  const ObjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final store = sl<ComplexesStore>();
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarApp(),
      backgroundColor: AppColors.hexEEF2FF,
      body: Observer(
          builder: (_) => store.isLoading
              ? const Center(child: CircularProgressIndicator())
              : const SliverScreen()),
    );
  }
}

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBarWidget(),
        SliverListWidget(),
      ],
    );
  }
}

class ViewNavigatScreen extends StatelessWidget {
  const ViewNavigatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final store = sl<ComplexesStore>();
    return Observer(builder: (_) {
      if (store.currentPageIndex == 1) {
        return const SliverListWidget();
      } else if (store.currentPageIndex == 2) {
        return const SliverListWidget();
      } else {
        return const SliverListWidget();
      }
    });
  }
}

class SliverListWidget extends StatelessWidget {
  const SliverListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final store = sl<ComplexesStore>();

    return SliverList.list(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...store.complexes.map(
                (complex) => ComplexCard(complex: complex),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
