# Gramática informal da MiniLang

## Programa
Um programa é uma ou mais definições de função.
Toda execução começa pela função chamada `main`.

## Função
A palavra-chave `fn`, um nome, parênteses contendo zero ou mais
parâmetros separados por vírgula, uma seta `->`, um tipo de retorno,
e um bloco entre chaves.
Cada parâmetro é um nome, dois-pontos e um tipo.
Ex.: fn fatorial(n: int) -> int { ... }

## Bloco
Uma chave de abertura, zero ou mais comandos, e uma chave de fechamento.

## Comando
Pode ser uma declaração de variável, uma atribuição, um if/else,
um while, um return, uma chamada de função ou um print.
Todo comando que não é bloco termina com ponto e vírgula.

## Declaração de variável
A palavra-chave `var`, um nome, dois-pontos, um tipo
(`int`, `bool` ou `float`), o sinal de igual, uma expressão,
e ponto e vírgula.
Ex.: var x: int = 5;   var ativo: bool = true;   var dobro: int = x * 2;

## Condicional
A palavra `if`, uma expressão entre parênteses, um bloco, e
opcionalmente a palavra `else` seguida de outro bloco.
Ex.: if (n <= 1) { return 1; } else { return 0; }

## Laço
A palavra `while`, uma expressão entre parênteses, e um bloco.
Ex.: while (i < 10) { i = i + 1; }

## Retorno
A palavra `return`, uma expressão, e ponto e vírgula.

## Expressão
Um número, um valor booleano, uma variável, uma chamada de função,
uma expressão entre parênteses, ou duas expressões com um operador
entre elas.
Operadores aritméticos: + - * /
Operadores de comparação: == != < <= > >=
Operadores lógicos: && || !
Ex.: 5    x    n - 1    n * fatorial(n - 1)    (a + b) * 2