# Gramática informal da MiniLang

## Programa

Um programa é uma ou mais funções. A execução começa pela função main.

## Função

A palavra fn, um nome, parênteses com zero ou mais parâmetros separados por vírgula, a seta ->, o tipo de retorno e um bloco.
Cada parâmetro é um nome, dois-pontos e um tipo.

    fn soma(a: int, b: int) -> int { ... }
    fn main() -> int { ... }

## Bloco

Chave de abertura {, zero ou mais comandos, chave de fechamento }.
As chaves são sempre obrigatórias, mesmo com um comando só (assim não fica a dúvida de a qual if um else pertence).

## Comandos
1. Declaração de variável: a palavra var, um nome, dois-pontos, um tipo, o sinal de igual, uma expressão e ponto e vírgula. O valor inicial é obrigatório.

        var x: int = 5;
        var ativo: bool = true;

2. Atribuição: um nome de variável já declarada, o sinal de igual, uma expressão e ponto e vírgula.

        i = i + 1;

3. If: a palavra if, uma expressão entre parênteses, um bloco e, se eu quiser, a palavra else seguida de outro bloco.

        if (n <= 1) { return 1; } else { return 0; }

4. While: a palavra while, uma expressão entre parênteses e um bloco.

        while (i < 10) { i = i + 1; }

5. Return: a palavra return, uma expressão e ponto e vírgula.

        return n * fatorial(n - 1);

6. Chamada de função: um nome, parênteses com zero ou mais expressões separadas por vírgula. Pode ser um comando sozinho ou aparecer dentro de uma expressão.

        print(x);

Declaração, atribuição, return e chamada terminam com ponto e vírgula.
If e while não terminam com ponto e vírgula, porque terminam com bloco.
O print é uma função comum que já vem pronta, não tem regra própria.

## Expressão

Para não ficar ambíguo (2 + 3 * 4 poderia dar 14 ou 20), as expressões são organizadas em níveis. Cada nível é um ou mais itens do nível de baixo ligados pelos operadores daquele nível, e o nível de baixo é resolvido primeiro.

1. ||
2. &&
3. ==  !=  <  <=  >  >=
4. +  -
5. *  /
6. valor simples

Um valor simples é a menor parte de uma expressão, aquela que não tem operador juntando duas coisas: um número, true, false, um nome de variável, uma chamada de função, uma expressão entre parênteses, ou um - ou um ! na frente de outro valor simples.

    n - 1
    2 + 3 * 4
    n * fatorial(n - 1)
    (a + b) * 2
    i < 10 && ativo

## Nomes, tipos e valores

Tipos: int, bool e float.

Nomes começam com letra ou com o caractere _ e depois podem ter letras, números ou _. Não podem ser palavra reservada (fn, var, if, else, while, return, true, false, int, bool, float, print).

    x    contador    valor_total    _tmp

Inteiro: 0, 42, 2026. Float: 1.5, 3.14. Booleano: true ou false.

Comentário começa com // e vai até o fim da linha. Não tem comentário de bloco.