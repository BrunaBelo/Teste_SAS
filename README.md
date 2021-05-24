Primeiramente agradeço a oportunidade que foi me dada para realizar o teste, apesar de ser em um tempo bem "corrido", foi uma experiência bem interessante e que gostei bastante de estar envolvida...

A aplicação pode ser testada por meio do Docker:
- docker-compose up
- docker-compose run web rake:db create
- docker-compose run web rake:db migrate
- docker-compose run web rake:db seed

O usuário de acesso Admin é: Login: admin@exemple.com, Senha: 123456
O usuário de acesso Funcionário Marketing é: Login: marketing@exemple.com, Senha: 123456

Foram implementados alguns testes no Controller.

E para facilitar a visualização e teste, foi realizado deploy da aplicação no Heroku, onde pode ser visualizada em: - [chinchila-food](https://chinchila-food.herokuapp.com/)

# Desafio Dev. JR Portabilis SAS

Primeiro, parabéns por chegar até aqui.

<img src="https://media.giphy.com/media/IwAZ6dvvvaTtdI8SD5/giphy-downsized.gif" alt="Alt Text" style="zoom:60%;" />

## Instruções

 O desafio técnico será simples, para realiza-lo siga as instruções abaixo:

- Dê um fork neste repositório e ao final suba para um repositório público em seu Github
- Você terá 3 dias para resolver apartir do recebimento do mesmo. Mas não se preocupe caso precise de mais tempo nos avise que poderemos estender este prazo.
- Utilize boas praticas de código e de nomenclatura de variáveis e métodos.
- Você poderá utilizar qualquer método  de pesquisa e consulta disponível. Mas evite copia direta de código.



## O desafio



Crie um projeto Rails que resolva a seguinte situação: Existe uma fabrica de produção de rações gourmet para chinchilas, por se tratar de um nicho muito pequeno do mercado os diretores da fabrica pensaram em abrir um site para divulgação de seus produtos. O site deve conter:

-  uma área logada onde os funcionários do marketing possam cadastrar produtos da fabrica (Importante)
- um cadastro de usuários onde somente usuários com permissão ADM possa utilizar (Desejável)
-  uma Home que divulgue de forma eficiente os produtos cadastrados .Aplicar css (Pode utilizar Bootstrap, Tailwind, etc) e  boas praticas de UX (Importante)
- Utilize PostgreSql como base de dados (Importante)
- Validação dos campos nos formulários de cadastro



## Ajuda

Caso esteja com dúvidas sobre o desafio proposto, pode entrar em contato conosco através do Linkedin ou pelo email: davi@portabilis.com.br

#### Links Úteis 

- [Rails Guide](https://guides.rubyonrails.org/)

- [Ruby Docs](https://ruby-doc.org/)

- [Tailwind](https://tailwindcss.com/docs)

- [Bootstrap](https://getbootstrap.com/docs/5.0/getting-started/introduction/)

E o mais importante:

#### [STACKOVERFLOW](https://stackoverflow.com/)

<img src="https://media.giphy.com/media/l49JHz7kJvl6MCj3G/giphy-downsized.gif" alt="Alt Text" style="zoom:60%;" />

