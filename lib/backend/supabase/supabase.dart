import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://lsdxqoyfjnqmcquxirfn.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxzZHhxb3lmam5xbWNxdXhpcmZuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjU0MTY4OTMsImV4cCI6MjA0MDk5Mjg5M30.q4ZWT85x5wlhwfDUVAlNOYCuYZ0IMsG8rtZwhYDWid8';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
