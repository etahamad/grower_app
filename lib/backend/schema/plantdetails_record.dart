import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlantdetailsRecord extends FirestoreRecord {
  PlantdetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "plantdetails" field.
  String? _plantdetails;
  String get plantdetails => _plantdetails ?? '';
  bool hasPlantdetails() => _plantdetails != null;

  // "plantsname" field.
  String? _plantsname;
  String get plantsname => _plantsname ?? '';
  bool hasPlantsname() => _plantsname != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  void _initializeFields() {
    _plantdetails = snapshotData['plantdetails'] as String?;
    _plantsname = snapshotData['plantsname'] as String?;
    _ref = snapshotData['ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plantdetails');

  static Stream<PlantdetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlantdetailsRecord.fromSnapshot(s));

  static Future<PlantdetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlantdetailsRecord.fromSnapshot(s));

  static PlantdetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlantdetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlantdetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlantdetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlantdetailsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPlantdetailsRecordData({
  String? plantdetails,
  String? plantsname,
  DocumentReference? ref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'plantdetails': plantdetails,
      'plantsname': plantsname,
      'ref': ref,
    }.withoutNulls,
  );

  return firestoreData;
}
