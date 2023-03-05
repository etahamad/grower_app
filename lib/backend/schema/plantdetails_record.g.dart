// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plantdetails_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlantdetailsRecord> _$plantdetailsRecordSerializer =
    new _$PlantdetailsRecordSerializer();

class _$PlantdetailsRecordSerializer
    implements StructuredSerializer<PlantdetailsRecord> {
  @override
  final Iterable<Type> types = const [PlantdetailsRecord, _$PlantdetailsRecord];
  @override
  final String wireName = 'PlantdetailsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PlantdetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.plantdetails;
    if (value != null) {
      result
        ..add('plantdetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.plantsname;
    if (value != null) {
      result
        ..add('plantsname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ref;
    if (value != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  PlantdetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlantdetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'plantdetails':
          result.plantdetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'plantsname':
          result.plantsname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$PlantdetailsRecord extends PlantdetailsRecord {
  @override
  final String? plantdetails;
  @override
  final String? plantsname;
  @override
  final DocumentReference<Object?>? ref;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlantdetailsRecord(
          [void Function(PlantdetailsRecordBuilder)? updates]) =>
      (new PlantdetailsRecordBuilder()..update(updates))._build();

  _$PlantdetailsRecord._(
      {this.plantdetails, this.plantsname, this.ref, this.ffRef})
      : super._();

  @override
  PlantdetailsRecord rebuild(
          void Function(PlantdetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlantdetailsRecordBuilder toBuilder() =>
      new PlantdetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlantdetailsRecord &&
        plantdetails == other.plantdetails &&
        plantsname == other.plantsname &&
        ref == other.ref &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, plantdetails.hashCode), plantsname.hashCode),
            ref.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlantdetailsRecord')
          ..add('plantdetails', plantdetails)
          ..add('plantsname', plantsname)
          ..add('ref', ref)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlantdetailsRecordBuilder
    implements Builder<PlantdetailsRecord, PlantdetailsRecordBuilder> {
  _$PlantdetailsRecord? _$v;

  String? _plantdetails;
  String? get plantdetails => _$this._plantdetails;
  set plantdetails(String? plantdetails) => _$this._plantdetails = plantdetails;

  String? _plantsname;
  String? get plantsname => _$this._plantsname;
  set plantsname(String? plantsname) => _$this._plantsname = plantsname;

  DocumentReference<Object?>? _ref;
  DocumentReference<Object?>? get ref => _$this._ref;
  set ref(DocumentReference<Object?>? ref) => _$this._ref = ref;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlantdetailsRecordBuilder() {
    PlantdetailsRecord._initializeBuilder(this);
  }

  PlantdetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plantdetails = $v.plantdetails;
      _plantsname = $v.plantsname;
      _ref = $v.ref;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlantdetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlantdetailsRecord;
  }

  @override
  void update(void Function(PlantdetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlantdetailsRecord build() => _build();

  _$PlantdetailsRecord _build() {
    final _$result = _$v ??
        new _$PlantdetailsRecord._(
            plantdetails: plantdetails,
            plantsname: plantsname,
            ref: ref,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
