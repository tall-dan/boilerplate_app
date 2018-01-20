FactoryBot.define do
  factory :address do
    building_number        1600
    street                 'Pennsylvania Avenue'
    city                   'Washington, D.C.'
    state                  'The 51st one'
    zip_code               '12345'

    trait :with_apt_number do
      apt_or_unit_number '6B'
    end
  end
end
