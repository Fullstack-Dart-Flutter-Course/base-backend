import '../model/estabelecimento.dart';
import '../ports/input/estabelecimento_service.dart';
import '../ports/output/estabelecimento_repository.dart';

class EstabelecimentoServiceImp implements EstabelecimentoService {
  final EstabelecimentoRepository _estabelecimentoRepository;

  EstabelecimentoServiceImp(this._estabelecimentoRepository);

  @override
  List<Estabelecimento> getListEstabelecimentos() {
    // Lógica de negócio
    return _estabelecimentoRepository.getListEstabelecimentos();
  }
}
