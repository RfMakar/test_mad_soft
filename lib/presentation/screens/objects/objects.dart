import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_mad_soft/domain/state/complexes_store.dart';
import 'package:test_mad_soft/internal/utils/sl.dart';

@RoutePage()
class ObjectsScreen extends StatelessWidget {
  const ObjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final store = sl<ComplexesStore>();
    return Scaffold(
      body: Observer(
        builder: (_) => store.isLoading
            ? const Center(child: CircularProgressIndicator())
            : const ViewScreen(),
      ),
    );
  }
}

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final store = sl<ComplexesStore>();
    return ListView.builder(
      itemCount: store.complexes.length,
      itemBuilder: (_, index) {
        final complex = store.complexes[index];
        return Text(complex.title);
      },
    );
  }
}
