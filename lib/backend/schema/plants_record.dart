import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'plants_record.g.dart';

abstract class PlantsRecord
    implements Built<PlantsRecord, PlantsRecordBuilder> {
  static Serializer<PlantsRecord> get serializer => _$plantsRecordSerializer;

  String? get plantname;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlantsRecordBuilder builder) =>
      builder..plantname = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plants');

  static Stream<PlantsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlantsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlantsRecord._();
  factory PlantsRecord([void Function(PlantsRecordBuilder) updates]) =
      _$PlantsRecord;

  static PlantsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlantsRecordData({
  String? plantname,
}) {
  final firestoreData = serializers.toFirestore(
    PlantsRecord.serializer,
    PlantsRecord(
      (p) => p..plantname = plantname,
    ),
  );

  return firestoreData;
}
