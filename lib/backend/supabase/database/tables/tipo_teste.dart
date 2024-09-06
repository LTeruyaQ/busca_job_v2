import '../database.dart';

class TipoTesteTable extends SupabaseTable<TipoTesteRow> {
  @override
  String get tableName => 'TipoTeste';

  @override
  TipoTesteRow createRow(Map<String, dynamic> data) => TipoTesteRow(data);
}

class TipoTesteRow extends SupabaseDataRow {
  TipoTesteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TipoTesteTable();

  int get idTipoTeste => getField<int>('id_TipoTeste')!;
  set idTipoTeste(int value) => setField<int>('id_TipoTeste', value);

  DateTime get idRegistroTipoTeste =>
      getField<DateTime>('id_registro_TipoTeste')!;
  set idRegistroTipoTeste(DateTime value) =>
      setField<DateTime>('id_registro_TipoTeste', value);

  String? get descricaoTipoTeste => getField<String>('descricao_TipoTeste');
  set descricaoTipoTeste(String? value) =>
      setField<String>('descricao_TipoTeste', value);
}
