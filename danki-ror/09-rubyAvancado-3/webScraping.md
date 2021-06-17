#### **Web Scraping**

O que você faria se precisasse percorrer diversas páginas de um site coletando um tipo específico de informação? Ou recuperar dados que não são fornecidos por uma API?

O Web Scraping existe para evitar essas tarefas manuais, ou então, trabalhosas. Uma técnica que automatiza o processo de extração de dados de uma página web.



Uma das bibliotecas mais utilizadas no mundo ruby para fazer isso é a **nokogiri**

1- **Instale** a gem **nokogiri** com o comando

```
gem install nokogiri
```



2- Crie um projeto chamado **web_scraping.rb **com o seguinte código

```
require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443)
# para fazer chamadas https
https.use_ssl = true

response = https.get("/")

doc = Nokogiri::HTML(response.body)

h1 = doc.at('h1')

puts h1.content
```

**O que aconteceu?**

- No começo nenhuma novidade. Você realizou uma **requisição** para o site do **onebitcode**
- Depois utilizou **Nokogiri::HTML** para **parsear** o documento **HTML**
- Por fim, você fez uso do método **at **para buscar a tag **h1 **e imprimir o seu conteúdo.



3-  O ultimo post do onebitcode encontra-se dentro das tags **<h3> <a href=’/ultimo-post’>Título Ultimo Post</a></h3>**

Para buscar este post faça

```
last_post = doc.at('h3 a')
puts last_post.content
puts last_post['href']
```



4- Você também pode procurar por **todos os posts** que estão na página inicial do onebitcode com o **método search**

```
doc.search('h3 a').each do |a|
  puts a.content
  puts a['href']
  puts ''
end
```