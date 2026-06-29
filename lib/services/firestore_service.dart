import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // ============================================================
  // RIWAYAT PENDIDIKAN
  // ============================================================

  /// Get all riwayat pendidikan
  Future<List<RiwayatPendidikan>> getRiwayatPendidikan() async {
    try {
      QuerySnapshot snap = await _db
          .collection('RiwayatPendidikan')
          .get();

      return snap.docs.map((doc) {
        return RiwayatPendidikan.fromMap(doc.id, Map<String, dynamic>.from(doc.data() as Map));
      }).toList()..sort((a, b) => a.tahunlulus.compareTo(b.tahunlulus));
    } on FirebaseException catch (e) {
      throw FirestoreError('Gagal mengambil data: ${e.message}');
    }
  }

  /// Add new riwayat pendidikan
  Future<void> addRiwayatPendidikan({
    required String namaSekolah,
    required int tahunLulus,
  }) async {
    try {
      await _db.collection('RiwayatPendidikan').add({
        'namasekolah': namaSekolah,
        'tahunlulus': tahunLulus,
        'createdAt': FieldValue.serverTimestamp(),
      });
    } on FirebaseException catch (e) {
      throw FirestoreError('Gagal menambah data: ${e.message}');
    }
  }

  /// Update existing riwayat pendidikan
  Future<void> updateRiwayatPendidikan({
    required String docId,
    required String namaSekolah,
    required int tahunLulus,
  }) async {
    try {
      await _db
          .collection('RiwayatPendidikan')
          .doc(docId)
          .update({
        'namasekolah': namaSekolah,
        'tahunlulus': tahunLulus,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } on FirebaseException catch (e) {
      throw FirestoreError('Gagal mengupdate data: ${e.message}');
    }
  }

  /// Delete riwayat pendidikan
  Future<void> deleteRiwayatPendidikan(String docId) async {
    try {
      await _db
          .collection('RiwayatPendidikan')
          .doc(docId)
          .delete();
    } on FirebaseException catch (e) {
      throw FirestoreError('Gagal menghapus data: ${e.message}');
    }
  }

  /// Stream of riwayat pendidikan (real-time updates)
  Stream<List<RiwayatPendidikan>> streamRiwayatPendidikan() {
    return _db
        .collection('RiwayatPendidikan')
        .snapshots()
        .map((snap) => snap.docs.map((doc) {
          return RiwayatPendidikan.fromMap(doc.id, Map<String, dynamic>.from(doc.data() as Map));
        }).toList()..sort((a, b) => a.tahunlulus.compareTo(b.tahunlulus)));
  }
}

/// Model for RiwayatPendidikan
class RiwayatPendidikan {
  final String id;
  final String namasekolah;
  final int tahunlulus;
  final DateTime? createdAt;

  RiwayatPendidikan({
    required this.id,
    required this.namasekolah,
    required this.tahunlulus,
    this.createdAt,
  });

  factory RiwayatPendidikan.fromMap(String id, Map<String, dynamic> map) {
    return RiwayatPendidikan(
      id: id,
      namasekolah: map['namasekolah'] ?? '',
      tahunlulus: map['tahunlulus'] ?? 0,
      createdAt: map['createdAt'] != null
          ? (map['createdAt'] as Timestamp).toDate()
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'namasekolah': namasekolah,
      'tahunlulus': tahunlulus,
    };
  }
}

/// Firestore error wrapper
class FirestoreError implements Exception {
  final String message;
  FirestoreError(this.message);

  @override
  String toString() => message;
}
