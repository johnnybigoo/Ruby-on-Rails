#### *Tipos de dados**

Os tipos de dados existem para classificar dados, possibilitando a definição de regras para cada tipo. Com eles o Ruby sabe como lidar com os dados de nossos programas.

Os principais tipos de dados são:



- ### **Integer**

Como na matemática, **Inteiro** é o tipo de dado que representa o conjunto de números positivos, negativos e 0.

1. Crie um objeto do tipo **Integer** atribuindo à uma variável o seguinte valor inteiro.

> (variável é um local onde armazenamos dados que serão reutilizados).

```
integer_number = -20
```



2. Confirme que a variável realmente é do tipo inteiro executando.

```
integer_number.class
```



- ### **Float**

Tipo que representa os números reais inexatos.  De forma abreviada, são números decimais, números que contêm ponto flutuante

1. Faça que um objeto tenha o tipo **float** atribuindo a ele um valor decimal.

> (praticamente tudo no ruby é um objeto).

```
float_number = -20.05
```



2. Prove que o objeto realmente é do tipo **float** executando.

```
float_number.class
```



- ### **Boolean**

Tipo de dado usado para informar a veracidade de algo. Possui apenas dois estados, sendo eles **true** que é uma instância da classe TrueClass e **false** que é uma instância da classe FalseClass.

> (não se preocupe caso não saiba o que é uma classe, iremos abordar este assunto em uma próxima aula)

1. Inicie uma variável com tipo **boolean **da seguinte forma.

   ```
   nice_course =  true
   ```

   ​


2. Confirme que ela é uma instância da classe TrueClass executando.

   ```
   nice_course.class
   ```



- ### **String**

Tipo que representa um texto. Um conjunto de letras, símbolos ou números. Pode ser definido de várias formas, porém, as mais comuns são dentro de aspas simples ou duplas.

1. Crie um objeto do tipo **String **atribuindo à uma variável o seguinte texto.

   ```
   happiness =  "Programming with ruby"
   ```

   ​


2. Para ter certeza que o objeto é uma string, rode

   ```
   happiness.class
   ```



- ### **Array**

Um tipo que nos permite armazenar uma lista ordenada de dados em um único objeto. Para definir um array você deve utilizar colchetes.

1. Crie um objeto do tipo **array**

   ```
   first_array = [0, 1, 2]
   ```

   ​


2. Acesse a terceira posição do nosso array rodando

   ```
   first_array[2]
   ```

   ​


3. Para nos certificarmos que `first_array` é do tipo Array execute

   ```
   first_array.class
   ```

   ​

- ### **Symbol**

**Símbolo** é um tipo de dado semelhante a **String**, com a diferença de que ele é um objeto imutável. Duas strings idênticas podem ser objetos diferentes, mas um símbolo é apenas um objeto, ocupando sempre o mesmo espaço na memória.

Um símbolo sempre é definido começando com dois pontos `:` seguido por seu nome.

1. Inicie um objeto do tipo **Symbol **atribuindo à uma variável o seguinte valor.

   ```
   first_symbol = :ruby_symbol
   ```

   ​


2. Saiba qual posição da memória esse símbolo está salvo, rodando

   ```
   first_symbol.object_id
   ```

   ​


3. Agora crie outra variável com o mesmo símbolo e note que ela aponta para o mesmo endereço na memória.

   ```
   second_symbol = :ruby_symbol
   second_symbol.object_id
   first_symbol.object_id
   ```

   ​


4. Para confirmar que o objeto é do tipo **Symbol **execute

   ```
   first_symbol.class
   ```

   ​



- ### **Hash**

Tipo que representa uma coleção de dados organizados por chaves únicas e seus respectivos valores. Enquanto arrays são definidos com colchetes, hashes são definidos com chaves ‘{ }’

1. Crie um objeto do tipo **Hash** adicionando a uma variável o seguinte valor

   ```
   first_hash = {course: 'ruby', language: 'pt-Br' }
   ```

   ​

2. Saiba onde encontrar o tipo do curso rodando

   ```
   first_hash[:course]
   ```

   ​

3. Certifique-se que a variável é do tipo Hash executando

   ```
   first_hash.class
   ```



- ### **Tipagem Dinâmica**

No ruby não é preciso definir o tipo de dado antes de atribuir um valor à uma variável. O tipo é dinâmico, ou seja, ele é definido de acordo com o dado atribuído.

Um exemplo é que podemos alterar o valor de uma variável diversas vezes e em cada uma delas notar que o tipo de dado também mudou.

1. Execute as seguintes linhas de comando

   ```
   dynamic = 2
   dynamic.class
   dynamic = "String type"
   dynamic.class
   dynamic = :onebit_symbol
   dynamic.class
   ```