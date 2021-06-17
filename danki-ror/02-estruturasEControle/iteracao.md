## **Iteração**

Tipo de estrutura de controle que gerencia quantas vezes um trecho de código será executado.
Abaixo, veja as instruções de iteração **For, While, Times, Do/While.**

#### **For**

Usado para percorrer uma coleção de elementos.

1. Crie um programa chamado **for.rb** com o seguinte código

```
fruits = ['Maçã', 'Uva', 'Morango']

for fruit in fruits
  puts fruit
end
```

> No exemplo, a instrução **for** percorrerá todos os elementos da lista fruits. Em cada iteração, podemos acessar o elemento atual através da variável fruit.

2. Execute o programa e veja o nome da fruta cada vez que a repetição é executada.


3. Agora, substitua o código de **for.rb** por

```
fruits = ['Maçã', 'Uva', 'Morango']

fruit = "Laranja"

for fruit in fruits
  puts fruit
end

puts fruit
```

**CUIDADO**
**Ao executar o programa, note que a variável de iteração pode sobrescrever outra que esteja fora da estrutura de repetição.**



#### **While**

Instrução que repete um bloco de código enquanto sua condição é verdadeira.

1. Crie um programa chamado **while.rb** com o seguinte código

   ```
   x = 1

   while x < 10
     puts x
     # Adiciona + 1 ao valor de x
     x += 1
   end
   ```

> Quando este programa é executado, a instrução **while** é repetida enquanto o valor de x for menor que 10.



#### **Times**

Executa uma repetição por um especificado número de vezes.

1. Em um novo programa chamado **times.rb** adicione o seguinte código

```
2.times do
  puts 'Estou aprendendo times!'
end

names = ['João', 'Alfredo', 'Juca']
# Igual ao array, o times começa com índice 0
3.times do |index|
  puts names[index]
end
```

> Execute o programa e perceba que a estrutura times:
> Exibe a frase “Estou aprendendo times” 2 vezes
> Exibe um índice do array name por 3 vezes



#### **Do/While**

Na verdade, no Ruby utilizamos uma estrutura de repetição chamada **loop** que faz o mesmo que o **do/while** em outras linguagens de programação. Ele cria um laço de repetição que só é parado quando uma instrução break for verdadeira.

1. Em um arquivo chamado **loop.rb** adicione o seguinte código.

```
count = 1
loop do
  puts count
  break if count == 10
  # Incrementa a variável count
  count += 1
end
```

> Foi criado uma estrutura de repetição que só será parada quando o valor da variável count for igual a 10.
> Execute o programa e veja que ele contará de 1 a 10.