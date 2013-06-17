#FactoryGirl.define do
#  factory :user do
#    name "shin"
#    email "shin.php@gmail.com"
#    password "ps2ps2ps2"
#    password_confirmation "ps2ps2ps2"
#  end
#end

FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end
end