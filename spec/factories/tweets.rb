# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tweet, :class => 'Tweets' do
    text "hogehoge"
    image {Faker::Internet.url}
    user
  end
end
