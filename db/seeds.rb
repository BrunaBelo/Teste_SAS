role1 = Role.create({ name: 'admin'})
role2 = Role.create({ name: 'funcionario_marketing'})

user1 = User.create({ name: 'Ana', email: 'ana@gmail.com', password: '123456', password_confirmation: '123456', role_id: role1.id })
user1 = User.create({ name: 'Bruna', email: 'bruna@gmail.com', password: '123456', password_confirmation: '123456', role_id: role2.id })
