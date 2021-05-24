Role.create(name: :admin)
Role.create(name: :employee_marketing)
 
user1 = User.create({ name: 'Ana', email: 'ana@gmail.com', password: '123456', password_confirmation: '123456' })
user1.add_role(:admin)
user2 = User.create({ name: 'Bruna', email: 'bruna@gmail.com', password: '123456', password_confirmation: '123456' })
user2.add_role(:employee_marketing)

6.times do
    product = Product.create({ name: 'Alcon Frutas Legumes', 
                                description: '- Indicada para roedores;
                                - Formulada com legumes e frutas desidratadas;
                                - Ótima fonte de fibras e vitaminas para seu pet',
                                image: Rails.root.join("app/assets/images/image-food.png").open,
                                price: 20
    })
    end   
