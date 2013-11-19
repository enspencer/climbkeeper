FactoryGirl.define do
  factory :rockgym do
    name "gold's gym"
    url "www.goldsgym.com"

    trait :with_problems do
    after :create do |rockgym|
      FactoryGirl.create_list :problem, 3, rockgym: rockgym
    end
  end

  end
end