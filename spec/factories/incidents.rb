FactoryBot.define do
  factory :incident do
    incident_type { Faker::Lorem.word }
    location { Faker::Address.full_address }
    comment { Faker::Lorem.word }
    created_by { Faker::Lorem.word  }
    images { Faker::LoremPixel.image }
    status { Faker::Lorem.word }
  end
end