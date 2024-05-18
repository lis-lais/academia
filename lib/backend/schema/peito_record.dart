import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PeitoRecord extends FirestoreRecord {
  PeitoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "exerc" field.
  String? _exerc;
  String get exerc => _exerc ?? '';
  bool hasExerc() => _exerc != null;

  // "serie" field.
  double? _serie;
  double get serie => _serie ?? 0.0;
  bool hasSerie() => _serie != null;

  // "qtdade" field.
  double? _qtdade;
  double get qtdade => _qtdade ?? 0.0;
  bool hasQtdade() => _qtdade != null;

  void _initializeFields() {
    _exerc = snapshotData['exerc'] as String?;
    _serie = castToType<double>(snapshotData['serie']);
    _qtdade = castToType<double>(snapshotData['qtdade']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('peito');

  static Stream<PeitoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PeitoRecord.fromSnapshot(s));

  static Future<PeitoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PeitoRecord.fromSnapshot(s));

  static PeitoRecord fromSnapshot(DocumentSnapshot snapshot) => PeitoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PeitoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PeitoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PeitoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PeitoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPeitoRecordData({
  String? exerc,
  double? serie,
  double? qtdade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'exerc': exerc,
      'serie': serie,
      'qtdade': qtdade,
    }.withoutNulls,
  );

  return firestoreData;
}

class PeitoRecordDocumentEquality implements Equality<PeitoRecord> {
  const PeitoRecordDocumentEquality();

  @override
  bool equals(PeitoRecord? e1, PeitoRecord? e2) {
    return e1?.exerc == e2?.exerc &&
        e1?.serie == e2?.serie &&
        e1?.qtdade == e2?.qtdade;
  }

  @override
  int hash(PeitoRecord? e) =>
      const ListEquality().hash([e?.exerc, e?.serie, e?.qtdade]);

  @override
  bool isValidKey(Object? o) => o is PeitoRecord;
}
