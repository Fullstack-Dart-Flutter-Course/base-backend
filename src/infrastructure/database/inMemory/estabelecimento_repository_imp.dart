import '../../../domain/model/estabelecimento.dart';
import '../../../domain/ports/output/estabelecimento_repository.dart';
import 'estabelecimento_mapper.dart';

class EstabelecimentoRepositoryImp implements EstabelecimentoRepository {
  EstabelecimentoRepositoryImp(this._estabelecimentoMapper);
  
  final EstabelecimentoMapper _estabelecimentoMapper;

  List<Map> fakeDB = [
    {
      'nome': 'Estabelecimento XPTO',
      'cnpj': '12345678912345',
    },
    {
      'nome': 'Estabelecimento DOIS',
      'cnpj': '12345678912345',
    }
  ];

  

  @override
  List<Estabelecimento> getListEstabelecimentos() {
    // Trata todas as chamadas ao mundo externo relacionadas a infra
    return fakeDB.map((e) => _estabelecimentoMapper.toDomain(e)).toList();
  }
}
