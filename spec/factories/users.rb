# spec/factories/todos.rb
FactoryBot.define do
    factory :user do
      firstname { Faker::Name.first_name }     
      lastname{ Faker::Name.last_name }
      username{ Faker::Internet.user_name.gsub(/[^A-Za-z]/, "")}
      email { Faker::Internet.email }
      isAdmin{ Faker::Boolean.boolean }
      password { Faker::Internet.password(min_length: 8) }
    end
  end