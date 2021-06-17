#### **Chamadas Web**

Talvez sua aplicação precise recuperar informações, enviar formulários, ou então, enviar documentos para websites.

Para isso o ruby conta com uma biblioteca chamada **Net::HTTP** que é capaz de realizar chamadas web.



### **Requisições http**

1- Crie um arquivo chamado **web_get.rb** com o código

```
require 'net/http'

example = Net::HTTP.get('example.com', '/index.html')

File.open('example.html', 'w') do |line|
 line.puts(example)
end
```

**O que aconteceu?**

- No início, é preciso  **adicionar** a biblioteca **Net:HTTP**
- Depois é feito uma requisição **HTTP** do tipo **GET **para o domínio **example.com**, com o caminho **/index.html**.

É a mesma coisa que entrar no browser e procurar pelo endereço [**http://example.com/index.html**](http://example.com/index.html)

- Você salvou a **resposta** dentro de uma variável para depois escrevê-la dentro de um arquivo.
- Quando você utilizou  **File.open** para um **arquivo inexistente**, o **ruby detectou** isso e **criou o arquivo** antes de escrever as informações nele.



### **Requisições https**

Para fazer as próximas requisições  você **utilizará o site** [https://reqres.in](https://reqres.in/)

Ele está preparado para **receber e responder** suas **requisições**, o que facilitará os testes de requisições **https**.



1- Faça uma requisição **https **utilizando o método use_ssl

```
require 'net/http'

https = Net::HTTP.new('reqres.in', 443)
# para fazer chamadas https
https.use_ssl = true

response = https.get("/api/users")
# status code
puts response.code
# status message
puts response.message
# body (json)
puts  response.body
```

**O que aconteceu?**

- Você **construiu** um objeto **Net::HTTP** iniciando com os valores de  **domínio** e **porta**
- Você informou que é uma requisição que utiliza o certificado ssl com o método **use_ssl = true**
- Fez um get para o caminho **api/users**
- Por fim exibiu o código da resposta, o status e o corpo da resposta



2- Agora, crie um arquivo chamado **web_post.rb** com o seguinte código

```
require 'net/http'

req = Net::HTTP::Post.new("/api/users")
req.set_form_data({ name:'Mario', job:'Encanador' })

# para fazer chamadas https
response = Net::HTTP.start('reqres.in', use_ssl: true) do |http|
  http.request(req)
end

puts response.code
puts response.body
```

**O que aconteceu?**

- Vocẽ inicializou um objeto **Net::HTTP::Post.new()** passando como argumento o caminho da url
- Depois informou quais são os  parâmetros a serem enviados com o método **set_form_data**
- Por fim utilizou o método **start** para criar uma conexão com o servidor e dentro de um bloco fez a requisição **POST**