// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complexes_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ComplexesStore on _ComplexesStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_ComplexesStore.isLoading', context: context);

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

  late final _$currentPageIndexAtom =
      Atom(name: '_ComplexesStore.currentPageIndex', context: context);

  @override
  int get currentPageIndex {
    _$currentPageIndexAtom.reportRead();
    return super.currentPageIndex;
  }

  @override
  set currentPageIndex(int value) {
    _$currentPageIndexAtom.reportWrite(value, super.currentPageIndex, () {
      super.currentPageIndex = value;
    });
  }

  late final _$isSearchAtom =
      Atom(name: '_ComplexesStore.isSearch', context: context);

  @override
  bool get isSearch {
    _$isSearchAtom.reportRead();
    return super.isSearch;
  }

  @override
  set isSearch(bool value) {
    _$isSearchAtom.reportWrite(value, super.isSearch, () {
      super.isSearch = value;
    });
  }

  late final _$complexesAtom =
      Atom(name: '_ComplexesStore.complexes', context: context);

  @override
  ObservableList<ComplexEntity> get complexes {
    _$complexesAtom.reportRead();
    return super.complexes;
  }

  @override
  set complexes(ObservableList<ComplexEntity> value) {
    _$complexesAtom.reportWrite(value, super.complexes, () {
      super.complexes = value;
    });
  }

  late final _$complexesSearchAtom =
      Atom(name: '_ComplexesStore.complexesSearch', context: context);

  @override
  ObservableList<ComplexEntity> get complexesSearch {
    _$complexesSearchAtom.reportRead();
    return super.complexesSearch;
  }

  @override
  set complexesSearch(ObservableList<ComplexEntity> value) {
    _$complexesSearchAtom.reportWrite(value, super.complexesSearch, () {
      super.complexesSearch = value;
    });
  }

  late final _$_ComplexesStoreActionController =
      ActionController(name: '_ComplexesStore', context: context);

  @override
  void searchComplex(String titleComplex) {
    final _$actionInfo = _$_ComplexesStoreActionController.startAction(
        name: '_ComplexesStore.searchComplex');
    try {
      return super.searchComplex(titleComplex);
    } finally {
      _$_ComplexesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
currentPageIndex: ${currentPageIndex},
isSearch: ${isSearch},
complexes: ${complexes},
complexesSearch: ${complexesSearch}
    ''';
  }
}
