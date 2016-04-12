--[[
Display.lua
Modulo de informações do cliente
]]


 --Se cliente logado, retorna saldo do cliente
 function get_saldo (cliente)
	if cliente.login == true then
		print(cliente.saldo)
		return cliente.saldo
	end
 end

 --Se cliente logado, retorna limite de saque/emprÃ©stimo
 function get_limite (cliente)
	if cliente.login == true then
		print(cliente.limite)
		return cliente.limite
	end
 end

 --Se cliente logado, retorna nome do cliente
 function get_nome (cliente)
	if cliente.login == true then
		print(cliente.nome)
		return cliente.nome
	end
 end
