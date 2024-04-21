import 'package:mobx/mobx.dart';
import 'package:test_mad_soft/domain/entities/complex.dart';
import 'package:test_mad_soft/domain/usecases/get_payload.dart';

part 'complexes_store.g.dart';

// ignore: library_private_types_in_public_api
class ComplexesStore = _ComplexesStore with _$ComplexesStore;

abstract class _ComplexesStore with Store {
  _ComplexesStore({
    required GetPayLoadUseCase getPayLoadUseCase,
  }) : _getPayLoadUseCase = getPayLoadUseCase;

  final GetPayLoadUseCase _getPayLoadUseCase;

  Future<void> init() async {
    await _getComplexesList();
    isLoading = false;
  }

  @observable
  bool isLoading = true;

  @observable
  int currentPageIndex = 0;

  @observable
  bool isSearch = false;

  @observable
  ObservableList<ComplexEntity> complexes = ObservableList();

  @observable
  ObservableList<ComplexEntity> complexesSearch = ObservableList();

  Future<void> _getComplexesList() async {
    final res = await _getPayLoadUseCase.call();
    if (res.success) {
      complexes.addAll(res.data!.payload);
    } else {
      print(res.message);
    }
  }

  @action
  void searchComplex(String titleComplex) {
    if (titleComplex.isEmpty) {
      isSearch = false;
    } else {
      isSearch = true;
    }
    final listSearch = complexes
        .where(
          (element) => element.title.toUpperCase().contains(
                titleComplex.toUpperCase(),
              ),
        )
        .toList();
    complexesSearch = ObservableList.of(listSearch);
  }
}
