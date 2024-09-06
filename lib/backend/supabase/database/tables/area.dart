import '../database.dart';

class AreaTable extends SupabaseTable<AreaRow> {
  @override
  String get tableName => 'Area';

  @override
  AreaRow createRow(Map<String, dynamic> data) => AreaRow(data);
}

class AreaRow extends SupabaseDataRow {
  AreaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AreaTable();

  int get idArea => getField<int>('id_Area')!;
  set idArea(int value) => setField<int>('id_Area', value);

  DateTime get dtRegistroArea => getField<DateTime>('dt_registro_Area')!;
  set dtRegistroArea(DateTime value) =>
      setField<DateTime>('dt_registro_Area', value);

  String? get descricaoArea => getField<String>('descricao_Area');
  set descricaoArea(String? value) => setField<String>('descricao_Area', value);
}
