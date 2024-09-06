import '../database.dart';

class VagasInteresseTable extends SupabaseTable<VagasInteresseRow> {
  @override
  String get tableName => 'vagasInteresse';

  @override
  VagasInteresseRow createRow(Map<String, dynamic> data) =>
      VagasInteresseRow(data);
}

class VagasInteresseRow extends SupabaseDataRow {
  VagasInteresseRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VagasInteresseTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('userId')!;
  set userId(String value) => setField<String>('userId', value);

  int? get vagaId => getField<int>('vagaId');
  set vagaId(int? value) => setField<int>('vagaId', value);

  DateTime? get dtInput => getField<DateTime>('dtInput');
  set dtInput(DateTime? value) => setField<DateTime>('dtInput', value);

  String? get tituloVaga => getField<String>('tituloVaga');
  set tituloVaga(String? value) => setField<String>('tituloVaga', value);

  String? get descricaoVaga => getField<String>('descricaoVaga');
  set descricaoVaga(String? value) => setField<String>('descricaoVaga', value);

  String? get empresaVaga => getField<String>('empresaVaga');
  set empresaVaga(String? value) => setField<String>('empresaVaga', value);

  DateTime? get encerraVaga => getField<DateTime>('encerraVaga');
  set encerraVaga(DateTime? value) => setField<DateTime>('encerraVaga', value);

  String? get statusInteresse => getField<String>('statusInteresse');
  set statusInteresse(String? value) =>
      setField<String>('statusInteresse', value);
}
