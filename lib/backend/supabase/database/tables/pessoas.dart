import '../database.dart';

class PessoasTable extends SupabaseTable<PessoasRow> {
  @override
  String get tableName => 'Pessoas';

  @override
  PessoasRow createRow(Map<String, dynamic> data) => PessoasRow(data);
}

class PessoasRow extends SupabaseDataRow {
  PessoasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PessoasTable();

  String? get nomeCompletoPessoa => getField<String>('nomeCompleto_Pessoa');
  set nomeCompletoPessoa(String? value) =>
      setField<String>('nomeCompleto_Pessoa', value);

  String? get nomeSocialPessoa => getField<String>('nomeSocial_Pessoa');
  set nomeSocialPessoa(String? value) =>
      setField<String>('nomeSocial_Pessoa', value);

  DateTime? get dtNascimentoPessoa => getField<DateTime>('dt_nascimentoPessoa');
  set dtNascimentoPessoa(DateTime? value) =>
      setField<DateTime>('dt_nascimentoPessoa', value);

  double? get telefonePessoa => getField<double>('telefone_Pessoa');
  set telefonePessoa(double? value) =>
      setField<double>('telefone_Pessoa', value);

  String? get emailPessoa => getField<String>('email_Pessoa');
  set emailPessoa(String? value) => setField<String>('email_Pessoa', value);

  String? get cidadePessoa => getField<String>('cidade_Pessoa');
  set cidadePessoa(String? value) => setField<String>('cidade_Pessoa', value);

  String? get estadoPessoa => getField<String>('estado_Pessoa');
  set estadoPessoa(String? value) => setField<String>('estado_Pessoa', value);

  String? get bioPessoa => getField<String>('bio_Pessoa');
  set bioPessoa(String? value) => setField<String>('bio_Pessoa', value);

  String? get urlImagemPessoa => getField<String>('url_imagem_Pessoa');
  set urlImagemPessoa(String? value) =>
      setField<String>('url_imagem_Pessoa', value);

  String get userId => getField<String>('userId')!;
  set userId(String value) => setField<String>('userId', value);
}
