// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_info_service_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StorageInfoServiceStore on _StorageInfoServiceStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_ServiceStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$totalMemoryAtom =
      Atom(name: '_ServiceStore.totalMemory', context: context);

  @override
  int get totalMemory {
    _$totalMemoryAtom.reportRead();
    return super.totalMemory;
  }

  @override
  set totalMemory(int value) {
    _$totalMemoryAtom.reportWrite(value, super.totalMemory, () {
      super.totalMemory = value;
    });
  }

  late final _$_getMemoryAsyncAction =
      AsyncAction('_ServiceStore._getMemory', context: context);

  @override
  Future<void> _getMemory() {
    return _$_getMemoryAsyncAction.run(() => super._getMemory());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
totalMemory: ${totalMemory}
    ''';
  }
}
