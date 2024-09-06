import '../database.dart';

class EmpresaTable extends SupabaseTable<EmpresaRow> {
  @override
  String get tableName => 'Empresa';

  @override
  EmpresaRow createRow(Map<String, dynamic> data) => EmpresaRow(data);
}

class EmpresaRow extends SupabaseDataRow {
  EmpresaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmpresaTable();

  int get idEmpresa => getField<int>('id_Empresa')!;
  set idEmpresa(int value) => setField<int>('id_Empresa', value);

  String? get nomeEmpresa => getField<String>('nome_Empresa');
  set nomeEmpresa(String? value) => setField<String>('nome_Empresa', value);

  int? get representanteEmpresa => getField<int>('representante_Empresa');
  set representanteEmpresa(int? value) =>
      setField<int>('representante_Empresa', value);

  DateTime get dtRegistroEmpresa => getField<DateTime>('dt_registro_Empresa')!;
  set dtRegistroEmpresa(DateTime value) =>
      setField<DateTime>('dt_registro_Empresa', value);
}
