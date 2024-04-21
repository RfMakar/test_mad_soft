import 'package:equatable/equatable.dart';
import 'package:test_mad_soft/domain/entities/complex.dart';

class PayloadEntity extends Equatable {
  final List<ComplexEntity> payload;

  const PayloadEntity({
    required this.payload,
  });

  @override
  List<Object?> get props => [payload];
}
