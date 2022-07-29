import '../../domain/ports/input/estabelecimento_service.dart';

class EstabelecimentoController {
  // www.meusite.com/estabelecimento/getall

  EstabelecimentoController(this._estabelecimentoService);
  final EstabelecimentoService _estabelecimentoService;

  getAll() {
    _estabelecimentoService.getListEstabelecimentos().forEach(print);
  }
}
