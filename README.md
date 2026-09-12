# MiniLang

A MiniLang é uma linguagem de programação pequena que vou implementar ao longo
do semestre, passando por todas as fases: análise léxica, análise sintática,
análise semântica e interpretação.

## Trilha escolhida

Python 3 com a biblioteca lark.

## O que a linguagem vai ter

- variáveis dos tipos int, bool e float
- expressões aritméticas e lógicas
- if/else e while
- funções com parâmetros e retorno
- impressão com print

## Roadmap das unidades

- Unidade I (aulas 1 a 3): estrutura do repositório e gramática informal. Feito.
- Unidade II (aulas 4 a 7): análise léxica, escrever o lexer com tokens e lexemas.
- Unidade III (aulas 8 a 13): análise sintática, escrever o parser e montar a árvore sintática. É aqui que a gramática vira BNF.
- Unidade IV (aulas 14 a 18): análise semântica (verificação de tipos) e o interpretador que executa o programa.
- Unidade V (aulas 19 a 24): extensão da linguagem como DSL.

## Estrutura das pastas

    minilang/
    ├── src/
    │   ├── lexer/        Unidade II
    │   ├── parser/       Unidade III
    │   ├── semantic/     Unidade IV
    │   ├── interpreter/  Unidade IV
    │   └── dsl/          Unidade V
    ├── examples/
    │   └── fatorial.ml
    ├── tests/
    ├── GRAMATICA.md
    └── README.md

## Exemplo de programa

    fn fatorial(n: int) -> int {
        if (n <= 1) {
            return 1;
        } else {
            return n * fatorial(n - 1);
        }
    }

    fn main() -> int {
        var x: int = 5;
        print(fatorial(x));
        return 0;
    }
