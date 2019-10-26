50.times do |i|
  customer_name = Faker::Name.name
  customer_email = Faker::Internet.email
  customer = "#{customer_name} - #{customer_email}"
  puts "Cadastrando #{customer}"
  Customer.create(name: customer_name, email: customer_email)
end
