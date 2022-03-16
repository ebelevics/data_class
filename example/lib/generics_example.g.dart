// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generics_example.dart';

// **************************************************************************
// DataClassGenerator
// **************************************************************************

// ignore_for_file: annotate_overrides

mixin _$Response<T> {
  Response<T> get _self => this as Response<T>;

  Iterable<Object?> get _props sync* {
    yield _self.data;
  }

  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _$Response<T> &&
          runtimeType == other.runtimeType &&
          DataClass.$equals(_props, other._props);

  int get hashCode => Object.hashAll(_props);

  String toString() =>
      (ClassToString('Response', [T])..add('data', _self.data)).toString();

  Response<T> copyWith({
    T? data,
  }) {
    return Response(
      data: data ?? _self.data,
    );
  }

  Response<T> change(void Function(_ResponseChanges<T> c) updates) =>
      (_ResponseChanges<T>._(_self)..update(updates)).build();

  _ResponseChanges<T> toChanges() => _ResponseChanges._(_self);
}

class _ResponseChanges<T> {
  late T data;

  _ResponseChanges._(Response<T> dataClass) {
    replace(dataClass);
  }

  void update(void Function(_ResponseChanges<T> c) updates) => updates(this);

  void replace(covariant Response<T> dataClass) {
    data = dataClass.data;
  }

  Response<T> build() => Response(
        data: data,
      );
}

mixin _$PaginatedResponse<T extends Object> {
  PaginatedResponse<T> get _self => this as PaginatedResponse<T>;

  Iterable<Object?> get _props sync* {
    yield _self.data;
    yield _self.total;
  }

  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _$PaginatedResponse<T> &&
          runtimeType == other.runtimeType &&
          DataClass.$equals(_props, other._props);

  int get hashCode => Object.hashAll(_props);

  String toString() => (ClassToString('PaginatedResponse', [T])
        ..add('data', _self.data)
        ..add('total', _self.total))
      .toString();

  PaginatedResponse<T> copyWith({
    T? data,
    int? total,
  }) {
    return PaginatedResponse(
      data: data ?? _self.data,
      total: total ?? _self.total,
    );
  }

  PaginatedResponse<T> change(
          void Function(_PaginatedResponseChanges<T> c) updates) =>
      (_PaginatedResponseChanges<T>._(_self)..update(updates)).build();

  _PaginatedResponseChanges<T> toChanges() =>
      _PaginatedResponseChanges._(_self);
}

class _PaginatedResponseChanges<T extends Object>
    implements _ResponseChanges<T> {
  late T data;
  late int total;

  _PaginatedResponseChanges._(PaginatedResponse<T> dataClass) {
    replace(dataClass);
  }

  void update(void Function(_PaginatedResponseChanges<T> c) updates) =>
      updates(this);

  void replace(covariant PaginatedResponse<T> dataClass) {
    data = dataClass.data;
    total = dataClass.total;
  }

  PaginatedResponse<T> build() => PaginatedResponse(
        data: data,
        total: total,
      );
}

mixin _$ListResponse<T> {
  ListResponse<T> get _self => this as ListResponse<T>;

  Iterable<Object?> get _props sync* {
    yield _self.data;
  }

  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _$ListResponse<T> &&
          runtimeType == other.runtimeType &&
          DataClass.$equals(_props, other._props);

  int get hashCode => Object.hashAll(_props);

  String toString() =>
      (ClassToString('ListResponse', [T])..add('data', _self.data)).toString();

  ListResponse<T> copyWith({
    List<T>? data,
  }) {
    return ListResponse(
      data: data ?? _self.data,
    );
  }

  ListResponse<T> change(void Function(_ListResponseChanges<T> c) updates) =>
      (_ListResponseChanges<T>._(_self)..update(updates)).build();

  _ListResponseChanges<T> toChanges() => _ListResponseChanges._(_self);
}

class _ListResponseChanges<T> implements _ResponseChanges<List<T>> {
  late List<T> data;

  _ListResponseChanges._(ListResponse<T> dataClass) {
    replace(dataClass);
  }

  void update(void Function(_ListResponseChanges<T> c) updates) =>
      updates(this);

  void replace(covariant ListResponse<T> dataClass) {
    data = dataClass.data;
  }

  ListResponse<T> build() => ListResponse(
        data: data,
      );
}
