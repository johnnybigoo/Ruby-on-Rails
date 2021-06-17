#### **Leitura e Escrita de Arquivos**

O ruby torna sua vida mais fácil oferecendo uma forma simples para **leitura e escrita** de **arquivos**.

Através de poucas instruções, é possível **ler **o conteúdo, ou então, **escrever **algumas informações dentro de um **arquivo externo**. Isso é feito por meio de uma classe chamada **File,** a qual conta com diversas opções para **manipulação de arquivos**.



### **Leitura de arquivo**

Para aprender a ler arquivos, faça uma lista de compras em um arquivo de texto e depois leia cada item da lista usando um programa Ruby.

1- Crie um arquivo chamado **list.txt** com o seguinte texto

```
morango
brocolis
palmito
```

2- Em um arquivo com o nome **read.rb** adicione o código

```
puts '--Lista de Compras--'

file = File.open('list.txt')

file.each do |line|
  puts line
end
```

Você utilizou o método **open** da classe **File **para acessar o arquivo **list.txt.** Depois o método **each** para percorrer e exibir o conteúdo do arquivo.



### **Escrita de Arquivos**

Adicione mais itens à lista de compras e aprenda como **inserir conteúdo** dentro de um arquivo.

1- Crie um arquivo chamado **write.rb **com o código

```
File.open('shopping-list.txt', 'a') do |line|
  line.puts('arroz')
  line.puts('feijão')
  line.print('azeite')
  line.print(' de ')
  line.print('oliva')
end
```

Para adicionar conteúdo sem sobrescrever o que já existe , foi necessário passar o argumento **‘a’. **Este argumento significa **append, **ou seja,  acrescentar conteúdo.

Perceba que o método **puts **e **print** tem o mesmo significado do que em outros  exemplos deste curso. Os dois inserem valores ao arquivo, com a diferença de que apenas o** puts** insere uma **nova linha** após a string.

 2- Por curiosidade, caso queira saber o tamanho do arquivo gerado abra o **irb** e faça

```
File.open('shopping-list.txt').size
```

O método **size** retorna o tamanho do arquivo em **bytes.**

3- Para substituir o conteúdo desse arquivo utilize o argumento **‘w’**

```
File.open('shopping-list.txt', 'w') do |line|
  line.puts('batata')
end
```

Após executar este programa, a lista de compras contará apenas com o item batata.