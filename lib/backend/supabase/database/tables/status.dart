import '../database.dart';

class StatusTable extends SupabaseTable<StatusRow> {
  @override
  String get tableName => 'Status';

  @override
  StatusRow createRow(Map<String, dynamic> data) => StatusRow(data);
}

class StatusRow extends SupabaseDataRow {
  StatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StatusTable();

  int get idStatus => getField<int>('id_Status')!;
  set idStatus(int value) => setField<int>('id_Status', value);

  DateTime get dtRegistroStatus => getField<DateTime>('dt_registro_Status')!;
  set dtRegistroStatus(DateTime value) =>
      setField<DateTime>('dt_registro_Status', value);

  String? get descricaoStatus => getField<String>('descricao_Status');
  set descricaoStatus(String? value) =>
      setField<String>('descricao_Status', value);
}
