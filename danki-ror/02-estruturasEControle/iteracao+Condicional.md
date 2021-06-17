## **Iteração + Condicional**

1. Veja um exemplo de como utilizar estas duas estruturas em conjunto, em **age.rb**, coloque:

```
result = ''
loop do
  puts result
  puts 'Selecione uma das seguintes opções'
  puts '1- Descobrir a idade de uma pessoa'
  puts '0- Sair'
  print 'Opção: '

  option = gets.chomp.to_i

  if option == 1
    print 'Digite o ano de nascimento: '
    year_of_birth = gets.chomp.to_i
    print 'Digite o ano atual: '
    current_year = gets.chomp.to_i
    age = current_year - year_of_birth
    result = "Quem nasceu no ano de #{year_of_birth}, tem #{age} anos em #{current_year}"
  elsif option == 0
    break
  else
    result = 'Opção inválida'
  end
  # Comando que limpa o console
  system "clear"
end
```

> Neste programa é criado uma estrutura de repetição que permite ao usuário descobrir a idade de alguma pessoa.
> O programa é executado até que a opção 0 que significa sair seja escolhida.