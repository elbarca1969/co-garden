FactoryBot.define do
  factory :user do
    nickname {"一郎"}
    user_name {"ichiro"}
    introduction {"自己紹介です"}
    prefecture_id {1}
    birthday {Faker::Date.between(from: '2000-01-01', to: '2015-12-31')}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
  end
end