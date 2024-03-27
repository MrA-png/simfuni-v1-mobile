import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';

class PenawaranHelper {
  static String tableName = 'penawaran';

  // static Future<void> createPenawaran({
  //   required String judul,
  //   required String tentang,
  //   required String alamat,
  //   required int jumlah,
  //   required double hps,
  // }) async {
  //   try {
  //     final client = Supabase.instance.client;
  //     final response = await client
  //         .from(tableName)
  //         .upsert({'judul': judul, 'tentang': tentang, 'alamat': alamat, 'jumlah': jumlah, 'hps': hps})
  //         .execute();
  //     if (response.error != null) {
  //       throw response.error!;
  //     } else {
  //       print('Penawaran berhasil ditambahkan.');
  //     }
  //   } catch (e) {
  //     print('Gagal menambahkan penawaran: $e');
  //   }
  // }

  postData(String judul, String tentang, String alamat, int jumlah, int hps,
      context) async {
    try {
      await Supabase.instance.client.from(tableName).upsert({
        'judul': judul,
        'tentang': tentang,
        'alamat': alamat,
        'jumlah': jumlah,
        'hps': hps
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Penawaran berhasil disimpan'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Penawaran Gagal disimpan'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<List?> getPenawaranList(context) async {
    try {
      var response = await Supabase.instance.client.from(tableName).select();
      final dataList = response as List;
      return dataList;
    } catch (e) {
      print('Response Error ${e}');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error accured while getting Data'),
          backgroundColor: Colors.red,
        ),
      );
      return null;
    }
  }

  // static Future<Map<String, dynamic>?> getPenawaranById(String id) async {
  //   try {
  //     final client = Supabase.instance.client;
  //     final response =
  //         await client.from(tableName).select().eq('id', id).single().execute();

  //     if (response.error != null) {
  //       throw response.error!;
  //     }

  //     return response.data;
  //   } catch (e) {
  //     print('Gagal mendapatkan detail penawaran: $e');
  //     return null;
  //   }
  // }

  // updatePenawaran(
  //   String id,
  //   String judul,
  //   String tentang,
  //   String alamat,
  //   int jumlah,
  //   double hps,
  // ) async {
  //   try {
  //     await Supabase.instance.client.from(tableName).update({
  //       'judul': judul,
  //       'tentang': tentang,
  //       'alamat': alamat,
  //       'jumlah': jumlah,
  //       'hps': hps
  //     }).eq('id', id);

  //     if (response.error != null) {
  //       throw response.error!;
  //     } else {
  //       print('Penawaran berhasil diperbarui.');
  //     }
  //   } catch (e) {
  //     print('Gagal memperbarui penawaran: $e');
  //   }
  // }

  // static Future<void> deletePenawaran(String id) async {
  //   try {
  //     final client = Supabase.instance.client;
  //     final response =
  //         await client.from(tableName).delete().eq('id', id).execute();

  //     if (response.error != null) {
  //       throw response.error!;
  //     } else {
  //       print('Penawaran berhasil dihapus.');
  //     }
  //   } catch (e) {
  //     print('Gagal menghapus penawaran: $e');
  //   }
  // }
}
