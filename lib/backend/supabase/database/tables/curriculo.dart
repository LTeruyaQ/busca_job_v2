import '../database.dart';

class CurriculoTable extends SupabaseTable<CurriculoRow> {
  @override
  String get tableName => 'Curriculo';

  @override
  CurriculoRow createRow(Map<String, dynamic> data) => CurriculoRow(data);
}

class CurriculoRow extends SupabaseDataRow {
  CurriculoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CurriculoTable();

  int get idCurriculo => getField<int>('id_Curriculo')!;
  set idCurriculo(int value) => setField<int>('id_Curriculo', value);

  DateTime get dtRegistroCurriculo =>
      getField<DateTime>('dt_registro_Curriculo')!;
  set dtRegistroCurriculo(DateTime value) =>
      setField<DateTime>('dt_registro_Curriculo', value);

  String? get experienciasCurriculo =>
      getField<String>('experiencias_Curriculo');
  set experienciasCurriculo(String? value) =>
      setField<String>('experiencias_Curriculo', value);

  String? get formacaoAcademicaCurriculo =>
      getField<String>('formacaoAcademica_Curriculo');
  set formacaoAcademicaCurriculo(String? value) =>
      setField<String>('formacaoAcademica_Curriculo', value);

  String? get habilidades => getField<String>('habilidades');
  set habilidades(String? value) => setField<String>('habilidades', value);

  String? get certificacoes => getField<String>('certificacoes');
  set certificacoes(String? value) => setField<String>('certificacoes', value);

  String? get idiomas => getField<String>('idiomas');
  set idiomas(String? value) => setField<String>('idiomas', value);

  String? get recomendacoes => getField<String>('recomendacoes');
  set recomendacoes(String? value) => setField<String>('recomendacoes', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get nomeCurriculo => getField<String>('nomeCurriculo');
  set nomeCurriculo(String? value) => setField<String>('nomeCurriculo', value);

  String? get descCurriculo => getField<String>('descCurriculo');
  set descCurriculo(String? value) => setField<String>('descCurriculo', value);

  String? get userId => getField<String>('userId');
  set userId(String? value) => setField<String>('userId', value);
}
