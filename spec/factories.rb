FactoryGirl.define do
  factory :user do
    name     "Isaac Newton"
    email    "isaac@newton.com"
    password "gravity"
    password_confirmation "gravity"
  end
end