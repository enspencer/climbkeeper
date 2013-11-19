FactoryGirl.define do
  factory :problem do
    name "badass mother"
    style "gnarly"
    color "black"
    rating "7"
    rockgym
    # climber

    trait :with_reviews do
      after :create do |problem|
      FactoryGirl.create_list :review, 4, problem: problem
    end
  end

  end  
end