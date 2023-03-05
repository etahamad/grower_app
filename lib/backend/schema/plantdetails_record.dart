import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'plantdetails_record.g.dart';

abstract class PlantdetailsRecord
    implements Built<PlantdetailsRecord, PlantdetailsRecordBuilder> {
  static Serializer<PlantdetailsRecord> get serializer =>
      _$plantdetailsRecordSerializer;

  String? get plantdetails;

  String? get plantsname;

  DocumentReference? get ref;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlantdetailsRecordBuilder builder) => builder
    ..plantdetails = ''
    ..plantsname = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plantdetails');

  static Stream<PlantdetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlantdetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlantdetailsRecord._();
  factory PlantdetailsRecord(
          [void Function(PlantdetailsRecordBuilder) updates]) =
      _$PlantdetailsRecord;

  static PlantdetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlantdetailsRecordData({
  String? plantdetails,
  String? plantsname,
  DocumentReference? ref,
}) {
  final firestoreData = serializers.toFirestore(
    PlantdetailsRecord.serializer,
    PlantdetailsRecord(
      (p) => p
        ..plantdetails = plantdetails
        ..plantsname = plantsname
        ..ref = ref,
    ),
  );

  return firestoreData;
}
