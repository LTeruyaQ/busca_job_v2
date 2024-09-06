import '../database.dart';

class VagaTable extends SupabaseTable<VagaRow> {
  @override
  String get tableName => 'Vaga';

  @override
  VagaRow createRow(Map<String, dynamic> data) => VagaRow(data);
}

class VagaRow extends SupabaseDataRow {
  VagaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VagaTable();

  int get idVaga => getField<int>('id_Vaga')!;
  set idVaga(int value) => setField<int>('id_Vaga', value);

  String? get tituloVaga => getField<String>('titulo_Vaga');
  set tituloVaga(String? value) => setField<String>('titulo_Vaga', value);

  String? get descricaoVaga => getField<String>('descricao_Vaga');
  set descricaoVaga(String? value) => setField<String>('descricao_Vaga', value);

  String? get areaVaga => getField<String>('area_Vaga');
  set areaVaga(String? value) => setField<String>('area_Vaga', value);

  String? get nivelVaga => getField<String>('nivel_Vaga');
  set nivelVaga(String? value) => setField<String>('nivel_Vaga', value);

  String? get empresaVaga => getField<String>('empresa_Vaga');
  set empresaVaga(String? value) => setField<String>('empresa_Vaga', value);

  String? get statusVagas => getField<String>('status_Vagas');
  set statusVagas(String? value) => setField<String>('status_Vagas', value);

  DateTime? get dtAberturaVaga => getField<DateTime>('dt_abertura_Vaga');
  set dtAberturaVaga(DateTime? value) =>
      setField<DateTime>('dt_abertura_Vaga', value);

  DateTime? get dtEncerramentoVaga =>
      getField<DateTime>('dt_encerramento_Vaga');
  set dtEncerramentoVaga(DateTime? value) =>
      setField<DateTime>('dt_encerramento_Vaga', value);

  DateTime get dtRegistroVaga => getField<DateTime>('dt_registro_Vaga')!;
  set dtRegistroVaga(DateTime value) =>
      setField<DateTime>('dt_registro_Vaga', value);
}
