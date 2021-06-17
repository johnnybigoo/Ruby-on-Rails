**Métodos Private e Protected**

Por padrão, todos os métodos definidos são públicos. Isso significa que eles podem ser acessados por qualquer um.

Mas além dos métodos públicos, existem outros dois tipos de métodos chamados **private** e **protected.**

### **Private**

Método interno de uma classe. Apenas os métodos públicos dessa classe ou de classes descendentes podem chamá-lo.

O **self** é o único receptor de um método private

1- Defina um método abaixo da palavra **private**, para que ele seja deste tipo

```
class Foo
  def call_private
    bar
  end

  private

  def bar
    puts "private method"
  end
end

foo = Foo.new

foo.call_private
```

Se você tentar chamá-lo a partir da instância foo (**foo.bar**), receberá uma mensagem de erro informando que este método é privado.

### **Protected**

A **diferença** entre ele e o **private**, é que o método **protected **pode ter como receptor qualquer instância de sua classe.

```
class Foo
  def call_protected(instance)
    instance.bar
  end

  protected

  def bar
    puts "protected method"
  end
end

instance_1 = Foo.new

instance_2 = Foo.new

instance_1.call_protected(instance_1)

instance_1.call_protected(instance_2)
```

Perceba que você pode utilizar o receptor **instance** para o método **bar **que é do tipo **protected, **por isso, tome cuidado ao utilizar um método **protected**.