import 'application/web/estabelecimento_controller.dart';
import 'domain/ports/input/estabelecimento_service.dart';
import 'domain/ports/output/estabelecimento_repository.dart';
import 'domain/services/estabelecimento_service_imp.dart';
import 'infrastructure/database/inMemory/estabelecimento_mapper.dart';
import 'infrastructure/database/inMemory/estabelecimento_repository_imp.dart';

void main(List<String> args) {
  EstabelecimentoRepository estabelecimentoRepository =
      EstabelecimentoRepositoryImp(EstabelecimentoMapper());
  EstabelecimentoService estabelecimentoService =
      EstabelecimentoServiceImp(estabelecimentoRepository);
  EstabelecimentoController controller =
      EstabelecimentoController(estabelecimentoService);

controller.getAll();
 
}
