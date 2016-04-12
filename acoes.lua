--[[
acoes.lua
M�dulo de a��es do cliente
]]



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
			print("Foi retirado "..retirada.." reais")
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
	print("Foi depositado "..deposito.." reais, no cliente"..cliente.nome)
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

