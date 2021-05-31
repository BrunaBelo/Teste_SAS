## O desafio

Existe uma fabrica de produção de rações gourmet para chinchilas, por se tratar de um nicho muito pequeno do mercado os diretores da fabrica pensaram em abrir um site para divulgação de seus produtos. O site deve conter:

- Uma área logada onde os funcionários do marketing possam cadastrar produtos da fabrica (Importante)
- Um cadastro de usuários onde somente usuários com permissão ADM possa utilizar (Desejável)
- Uma Home que divulgue de forma eficiente os produtos cadastrados .Aplicar css (Pode utilizar Bootstrap, Tailwind, etc) e  boas praticas de UX (Importante)
- Utilize PostgreSql como base de dados (Importante)
- Validação dos campos nos formulários de cadastro

A aplicação pode ser testada por meio do Docker:
- docker-compose up
- docker-compose run web rake:db create
- docker-compose run web rake:db migrate
- docker-compose run web rake:db seed

O usuário de acesso Admin é: Login: admin@exemple.com, Senha: 123456
O usuário de acesso Funcionário Marketing é: Login: marketing@exemple.com, Senha: 123456
