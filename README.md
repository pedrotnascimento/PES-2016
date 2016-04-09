# PES-2016

# PES

Cadastro

##(Regra 1)##

TÍTULO: CADASTRO |

AUTORIA: Marcio Alves |

DATA: 14/04/2015 |

VERSÃO: 1.0 |

INDICADOR DE CONTEÚDO: 83 linhas de código

Descrição: Programa simples que tem como objetivo principal fazer o popular scrit de cadastro de clientes. 

##(Regra 2)##
_"Sempre que descrever algo em documentos, deve-se atentar para o uso de pré e pós-condições. "_

função: sacar

 Cliente: cliente que deseja sacar
 
 retirada: valor a ser retirado
 
 return: valor retirado
 
 pré-cond: cliente precisa fazer login
 
 pos-cond: Ao final da transação, saldo atual será o saldo anterior menos o valor retirado


 
Construtor: Cliente

nome: nome do cliente, string

senha: senha do cliente, número

saldo: saldo do cliente, default = 0 

limite: limite de saque/empréstimo do cliente

retorno: objeto cliente instanciado


##(Regra 3) Divisão do programa:##
_"Quando decompomos/dividimos algo devemos fazê-lo de tal modo que a divisão resulte em no mínimo 3 partes e no máximo 6 partes"_
+ ) Classe Clientes

+ ) Instacialização de clientes;

+ ) Ações funcionais do cliente: Login, Sacar, Realizar empréstimo, Depositar

+ ) Ações não funcionais do cliente, i.e, de caráter informacional: Consulta de nome, limite de saque e saldo


##(Regra 4) ##

_"Evite inventar nomes."_
Construtores começam com letra maiúscula
funções são minúsculas
palavras compostas são divididas por underline(_)

##(Regra 5)##
_"Simple solutions"_

Cada função faz apenas uma coisa, a inter-relação entre elas é fraca.


(Regra 6) 
Diário de Produção:

9/4 - Pensei em fazer uma aplicação simples de banco; 
Já sabia um pouquinho de Lua e sei um pouco de python então tive um bom começo
Fiz uma abstração básica de um banco, porém, tomei cuidados para que a aplicação
não ficasse sem propriedades do banco como segurança:
- para sacar, cliente precisa fazer login
- Não se pode alterar nome ou senha, só o adm tem esse direito.

