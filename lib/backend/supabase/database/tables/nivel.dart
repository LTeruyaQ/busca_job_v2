import '../database.dart';

class NivelTable extends SupabaseTable<NivelRow> {
  @override
  String get tableName => 'Nivel';

  @override
  NivelRow createRow(Map<String, dynamic> data) => NivelRow(data);
}

class NivelRow extends SupabaseDataRow {
  NivelRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NivelTable();

  int get idNivel => getField<int>('id_Nivel')!;
  set idNivel(int value) => setField<int>('id_Nivel', value);

  DateTime get dtRegistroNivel => getField<DateTime>('dt_registro_Nivel')!;
  set dtRegistroNivel(DateTime value) =>
      setField<DateTime>('dt_registro_Nivel', value);

  String? get descricaoNivel => getField<String>('descricao_Nivel');
  set descricaoNivel(String? value) =>
      setField<String>('descricao_Nivel', value);
}
