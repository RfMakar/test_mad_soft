// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complex.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Complex _$ComplexFromJson(Map<String, dynamic> json) {
  return _Complex.fromJson(json);
}

/// @nodoc
mixin _$Complex {
  String get title => throw _privateConstructorUsedError;
  int get remainingPoints => throw _privateConstructorUsedError;
  int get totalPointsCount => throw _privateConstructorUsedError;
  List<Point> get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComplexCopyWith<Complex> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplexCopyWith<$Res> {
  factory $ComplexCopyWith(Complex value, $Res Function(Complex) then) =
      _$ComplexCopyWithImpl<$Res, Complex>;
  @useResult
  $Res call(
      {String title,
      int remainingPoints,
      int totalPointsCount,
      List<Point> points});
}

/// @nodoc
class _$ComplexCopyWithImpl<$Res, $Val extends Complex>
    implements $ComplexCopyWith<$Res> {
  _$ComplexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? remainingPoints = null,
    Object? totalPointsCount = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      remainingPoints: null == remainingPoints
          ? _value.remainingPoints
          : remainingPoints // ignore: cast_nullable_to_non_nullable
              as int,
      totalPointsCount: null == totalPointsCount
          ? _value.totalPointsCount
          : totalPointsCount // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Point>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplexImplCopyWith<$Res> implements $ComplexCopyWith<$Res> {
  factory _$$ComplexImplCopyWith(
          _$ComplexImpl value, $Res Function(_$ComplexImpl) then) =
      __$$ComplexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int remainingPoints,
      int totalPointsCount,
      List<Point> points});
}

/// @nodoc
class __$$ComplexImplCopyWithImpl<$Res>
    extends _$ComplexCopyWithImpl<$Res, _$ComplexImpl>
    implements _$$ComplexImplCopyWith<$Res> {
  __$$ComplexImplCopyWithImpl(
      _$ComplexImpl _value, $Res Function(_$ComplexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? remainingPoints = null,
    Object? totalPointsCount = null,
    Object? points = null,
  }) {
    return _then(_$ComplexImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      remainingPoints: null == remainingPoints
          ? _value.remainingPoints
          : remainingPoints // ignore: cast_nullable_to_non_nullable
              as int,
      totalPointsCount: null == totalPointsCount
          ? _value.totalPointsCount
          : totalPointsCount // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Point>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ComplexImpl with DiagnosticableTreeMixin implements _Complex {
  const _$ComplexImpl(
      {required this.title,
      required this.remainingPoints,
      required this.totalPointsCount,
      required final List<Point> points})
      : _points = points;

  factory _$ComplexImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplexImplFromJson(json);

  @override
  final String title;
  @override
  final int remainingPoints;
  @override
  final int totalPointsCount;
  final List<Point> _points;
  @override
  List<Point> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Complex(title: $title, remainingPoints: $remainingPoints, totalPointsCount: $totalPointsCount, points: $points)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Complex'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('remainingPoints', remainingPoints))
      ..add(DiagnosticsProperty('totalPointsCount', totalPointsCount))
      ..add(DiagnosticsProperty('points', points));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplexImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.remainingPoints, remainingPoints) ||
                other.remainingPoints == remainingPoints) &&
            (identical(other.totalPointsCount, totalPointsCount) ||
                other.totalPointsCount == totalPointsCount) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, remainingPoints,
      totalPointsCount, const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplexImplCopyWith<_$ComplexImpl> get copyWith =>
      __$$ComplexImplCopyWithImpl<_$ComplexImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplexImplToJson(
      this,
    );
  }
}

abstract class _Complex implements Complex {
  const factory _Complex(
      {required final String title,
      required final int remainingPoints,
      required final int totalPointsCount,
      required final List<Point> points}) = _$ComplexImpl;

  factory _Complex.fromJson(Map<String, dynamic> json) = _$ComplexImpl.fromJson;

  @override
  String get title;
  @override
  int get remainingPoints;
  @override
  int get totalPointsCount;
  @override
  List<Point> get points;
  @override
  @JsonKey(ignore: true)
  _$$ComplexImplCopyWith<_$ComplexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
