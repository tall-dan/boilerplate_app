FactoryBot.define do
  factory :address do
    building_number        1600
    street                 Faker::Address.street_name
    city                   Faker::Address.city
    state                  Faker::Address.state
    zip_code               Faker::Address.zip_code

    trait :with_apt_number do
      apt_or_unit_number Faker::Address.secondary_address
    end
  end
end
