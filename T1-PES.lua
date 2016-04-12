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
					senha= senha,
					login= false}
	 return cliente
 end

clientes = {}
clientes[1] = Cliente("pedro", 123)
clientes[2] = Cliente("thiago", 123)
clientes[3] = Cliente("Celia", 123)

 --[[
 função: login
 Clientes: base de clientes que contém o cliente com objetivo de fazer login
 nome: nome do cliente que deseja fazer login
 senha: senha do cliente
 ]]
 function login(nome, senha)
	for i, cliente in ipairs(clientes) do
		if cliente.nome == nome and cliente.senha == senha then
			print ("login sucessfull")
			cliente.login = true
			return
		end
	end
end



