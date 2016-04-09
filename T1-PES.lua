--[[
Título: Sistema simples de bano
Autoria: Pedro Nascimento
Data: 09/04/2016
Versão: 1.0
Indicador de Conteúdo: 76 linhas,
Descrição: 
Sistema simples de banco. O sistema tem as principais funções de um banco,
tais como: Saque, login, empréstimo, ver saldo, ver titular, ver limite de conta.

]]



--[[
Construtor: Cliente
nome: nome do cliente, string
senha: senha do cliente, número
saldo: saldo do cliente, default = 0 
limite: limite de saque/empréstimo do cliente

retorno: objeto cliente instanciado
]]
function Cliente ( nome, senha)
	 cliente = { 	nome=nome,
					saldo=0,
					limite=1024,
					senha= senha}
	 return cliente
 end

clientes = {}
clientes[0] = Cliente("pedro", 123)
clientes[1] = Cliente("thiago", 123)
clientes[2] = Cliente("Celia", 123)
 
 --[[
 função: login
 Clientes: base de clientes que contém o cliente com objetivo de fazer login
 nome: nome do cliente que deseja fazer login
 senha: senha do cliente
 ]]
 function login(clientes, nome, senha)
	for i, cliente in ipairs(clientes) do
		if cliente.nome == nome and cliente.senha == senha then
			print "login sucessfull"
			cliente.login = true
		end
	end
end
 
 --[[
 função: sacar
 Cliente: cliente que deseja sacar
 retirada: valor a ser retirado
 return: valor retirado
 pré-cond: cliente precisa fazer login
 pos-cond: Ao final da transação, saldo atual será o saldo anterior menos o valor retirado
 ]]
 function sacar (cliente, retirada)
	if cliente.login ==true then	
		if (cliente.saldo - retirada) > 0 and cliente.limite > retirada then
			cliente.saldo = cliente.saldo - retirada
			return retirada
		end
	end
 end
	
--[[
cliente: cliente que terá valor depositado na conta
deposito: valor depositado
pré-cond: cliente existir
pós-cond: saldo do cliente será o saldo anterior mais o valor do depósito
]]
 function depositar (cliente, deposito)
	cliente.saldo = cliente.saldo + deposito
	return 0
 end
 
--[[
cliente: cliente que pegará emprestimo
valor: valor a ser emprestado
pré-cond: cliente logado
pós-cond: saldo do cliente será o saldo anterior mais o valor do empréstimo
]]
 function emprestimo (cliente, valor)
	if cliente.login ==true then
		cliente.saldo = cliente.saldo + valor
		return 0
	end
 end
 
 --Se cliente logado, retorna saldo do cliente
 function get_saldo (cliente)
	if cliente.login == true then
		return cliente.saldo
	end
 end

 --Se cliente logado, retorna limite de saque/empréstimo
 function get_limite (cliente)
	if cliente.login == true then
		return cliente.limite
	end
 end 
 
 --Se cliente logado, retorna nome do cliente
 function get_nome (cliente)
	if cliente.login == true then
		return cliente.nome
	end
 end
 
 