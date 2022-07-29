import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:mysql1/mysql1.dart';

void main(List<String> arguments) async {
  final conn = await MySqlConnection.connect(
    ConnectionSettings(
      host: 'localhost',
      port: 3309,
      user: 'teco',
      db: 'delivery',
      password: 'admin',
    ),
  );

  // await conn.query("DELETE FROM tb_permissoes WHERE nome = 'ADMIN'");

  await conn
      .query("insert into tb_permissoes (nome, status) values ('ADMIN', 'A')");
  final result = await conn.query("SELECT * FROM tb_permissoes");
  print(result);

  try {
    await shelf_io.serve(
      (Request request) => Response(
        200,
        body: {"message": 'Ola mundo'},
        headers: {'content-type': 'application/json'},
      ),
      'localhost',
      8080,
    );
  } catch (e) {
    print('Server is already connected');
  }
}
