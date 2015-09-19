# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    nickname 'hogehoge'
    email { Faker::Internet.email }
    password { Faker::Internet.password(8) }
    # save時にvalidationをスキップする
    # to_create do |instance|
    #   instance.save validate: false
    # end
  end
end
