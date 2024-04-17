import 'package:mobx/mobx.dart';
import 'package:test_mad_soft/data/models/complex/complex.dart';
import 'package:test_mad_soft/domain/repository/paylod_repository.dart';

part 'complexes_store.g.dart';

// ignore: library_private_types_in_public_api
class ComplexesStore = _ComplexesStore with _$ComplexesStore;

abstract class _ComplexesStore with Store {
  _ComplexesStore({
    required PayloadRepository payloadRepository,
  }) : _payloadRepository = payloadRepository;

  final PayloadRepository _payloadRepository;

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
  ObservableList<Complex> complexes = ObservableList();

  @observable
  ObservableList<Complex> complexesSearch = ObservableList();

  Future<void> _getComplexesList() async {
    final res = await _payloadRepository.getPayload();
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
