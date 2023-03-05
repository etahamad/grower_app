// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plants_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlantsRecord> _$plantsRecordSerializer =
    new _$PlantsRecordSerializer();

class _$PlantsRecordSerializer implements StructuredSerializer<PlantsRecord> {
  @override
  final Iterable<Type> types = const [PlantsRecord, _$PlantsRecord];
  @override
  final String wireName = 'PlantsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlantsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.plantname;
    if (value != null) {
      result
        ..add('plantname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PlantsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlantsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'plantname':
          result.plantname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PlantsRecord extends PlantsRecord {
  @override
  final String? plantname;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlantsRecord([void Function(PlantsRecordBuilder)? updates]) =>
      (new PlantsRecordBuilder()..update(updates))._build();

  _$PlantsRecord._({this.plantname, this.ffRef}) : super._();

  @override
  PlantsRecord rebuild(void Function(PlantsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlantsRecordBuilder toBuilder() => new PlantsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlantsRecord &&
        plantname == other.plantname &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, plantname.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlantsRecord')
          ..add('plantname', plantname)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlantsRecordBuilder
    implements Builder<PlantsRecord, PlantsRecordBuilder> {
  _$PlantsRecord? _$v;

  String? _plantname;
  String? get plantname => _$this._plantname;
  set plantname(String? plantname) => _$this._plantname = plantname;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlantsRecordBuilder() {
    PlantsRecord._initializeBuilder(this);
  }

  PlantsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plantname = $v.plantname;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlantsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlantsRecord;
  }

  @override
  void update(void Function(PlantsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlantsRecord build() => _build();

  _$PlantsRecord _build() {
    final _$result =
        _$v ?? new _$PlantsRecord._(plantname: plantname, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
