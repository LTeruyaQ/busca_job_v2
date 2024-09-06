import '../database.dart';

class TesteTable extends SupabaseTable<TesteRow> {
  @override
  String get tableName => 'Teste';

  @override
  TesteRow createRow(Map<String, dynamic> data) => TesteRow(data);
}

class TesteRow extends SupabaseDataRow {
  TesteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TesteTable();

  int get idTeste => getField<int>('id_Teste')!;
  set idTeste(int value) => setField<int>('id_Teste', value);

  String? get tituloTeste => getField<String>('titulo_Teste');
  set tituloTeste(String? value) => setField<String>('titulo_Teste', value);

  String? get descricaoTeste => getField<String>('descricao_Teste');
  set descricaoTeste(String? value) =>
      setField<String>('descricao_Teste', value);

  int? get vagaTeste => getField<int>('vaga_Teste');
  set vagaTeste(int? value) => setField<int>('vaga_Teste', value);

  int? get tipoTeste => getField<int>('tipo_Teste');
  set tipoTeste(int? value) => setField<int>('tipo_Teste', value);

  DateTime? get dtAberturaTeste => getField<DateTime>('dt_abertura_Teste');
  set dtAberturaTeste(DateTime? value) =>
      setField<DateTime>('dt_abertura_Teste', value);

  DateTime? get dtEncerramentoTeste =>
      getField<DateTime>('dt_encerramento_Teste');
  set dtEncerramentoTeste(DateTime? value) =>
      setField<DateTime>('dt_encerramento_Teste', value);

  DateTime get dtRegistroTeste => getField<DateTime>('dt_registro_Teste')!;
  set dtRegistroTeste(DateTime value) =>
      setField<DateTime>('dt_registro_Teste', value);

  int? get statusTeste => getField<int>('status_Teste');
  set statusTeste(int? value) => setField<int>('status_Teste', value);
}
