FactoryGirl.define do
  factory :problem do
    name "badass mother"
    style "gnarly"
    color "black"
    rating "7"
    rockgym
    # climber

    trait :with_problems do
      after :create do |problem|
      FactoryGirl.create_list :reviews, 4, problem: problem
    end
  end

  end  
end