import 'package:equatable/equatable.dart';

class PointEntity extends Equatable {
  final int x;
  final int y;
  final String status;

  const PointEntity({
    required this.x,
    required this.y,
    required this.status,
  });

  @override
  List<Object?> get props => [x, y, status];
}
