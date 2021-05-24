Role.create(name: :admin)
Role.create(name: :employee_marketing)
 
user1 = User.create({ name: 'admin', email: 'admin@exemple.com', password: '123456', password_confirmation: '123456' })
user1.add_role(:admin)
user2 = User.create({ name: 'marketing', email: 'marketing@exemple.com', password: '123456', password_confirmation: '123456' })
user2.add_role(:employee_marketing)

3.times do
    product = Product.create({ name: 'Alcon Frutas Legumes', 
                                description: 'Indicada para roedores;
                                - Formulada com legumes e frutas desidratadas',
                                image: Rails.root.join("app/assets/images/image-food.png").open,
                                price: 20
    })
    end

3.times do
    product = Product.create({ name: 'Ração para Chinchila', 
                                description: 'Alimento completo para Chinchila e Porquinho da India',
                                image: Rails.root.join("app/assets/images/image-food2.png").open,
                                price: 56
    })
    end

product = Product.create({ name: 'Alcon Frutas Legumes', 
                            description: 'Indicada para roedores;
                            - Formulada com legumes e frutas desidratadas;
                            - Ótima fonte de fibras e vitaminas para seu pet',
                            image: Rails.root.join("app/assets/images/image-food.png").open,
                            price: 150
}) 
