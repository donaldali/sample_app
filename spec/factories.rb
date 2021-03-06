# FactoryGirl.define do
#   factory :user do
#     name     "Isaac Newton"
#     email    "isaac@newton.com"
#     password "gravity"
#     password_confirmation "gravity"
#   end
# end

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

  factory :micropost do
  	# content "Lorem ipsum"
    sequence(:content) { |n| "Lorem ipsum #{n}" }
  	user
  end
end
