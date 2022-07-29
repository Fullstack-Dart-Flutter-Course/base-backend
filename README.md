Camada de domínio da aplicação (domain):
	- models: Representa um objeto do mundo real que será exposto na aplicação
	- ports: Contratos que se comunicam e geram intenções (pegar alguma coisa, sair alguma coisa).
		input: Contrato de serviço (service)
		output: Contrato de repositório (repository);

	- services: Implementa os contratos de serviços das portas de entrada e Orquestra as regras de negócios;