#### **Entrada/Saída**

Essas duas operações manipulam dados, com a diferença que a **entrada** ocorre quando o programa lê dados que podem ter sido recebidos de um teclado, de um arquivo, ou então de outro programa e a **saída** é um dado produzido pelo programa que pode ser exibido em uma tela, enviado para um arquivo ou então para outro programa.

1. Para fazer um programa com entrada e saída de dados, crie um arquivo chamado **entrada_saida.rb** e adicione o seguinte código.

   ```
   # saída de dado
   print 'Digite seu nome: '
   # Recebendo uma entrada do teclado
   name = gets.chomp
   # saída utilizando puts
   # use códigos ruby dentro de uma string com #{code}
   puts "Hello #{name}!"
   ```

   ​



> Perceba que primeiro é exibido uma mensagem pedindo que a pessoa informe seu nome. Depois é criado uma variável chamada **name** que é igual a gets.chomp.
>
> Mas afinal de contas o que é isso?
>
> **gets** é um método que recebe como entrada um dado inserido pelo teclado. Como ele captura qualquer coisa precisamos do *.chomp* para que quando o enter for pressionado ele não crie uma quebra de linha.
>
> Por fim realizamos uma nova saída de dado imprimindo uma saudação para a pessoa que informou seu nome.

2. Veja isso na prática rodando

   ```
   ruby entrada_saida.rb
   ```

> O gets recebe os dados como String, mas podemos transformá-los em números inteiros e realizar operações matemáticas com eles como no exemplo a seguir.

4. Crie um arquivo chamado **arithmetic_io.rb** e adicione o seguinte código

   ```
   puts 'Soma entre dois números'
   print 'Digite o primeiro número inteiro: '
   # .to_i transforma a string em um número inteiro
   number1 = gets.chomp.to_i
   print 'Digite o segundo número inteiro: '
   number2 = gets.chomp.to_i
   addition = number1 + number2puts
   "O resultado da adição entre os dois números é #{addition}"
   ```

   ​

5. Execute o programa

   ```Depois de inserir dois valores inteiros, a saída é o resultado da adição entre os dois números.
   ruby arithmetic_io.rb
   ```

   Depois de inserir dois valores inteiros, a saída é o resultado da adição entre os dois números.