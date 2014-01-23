# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artist do
    first 'Elvis'
    middle ''
    last 'Presley'
  end
  factory :kenny, class: Artist do
    first 'Kenny'
    middle ''
    last 'Rogers'
  end

  factory :nancy, class: Artist  do
    first 'Nancy'
    middle ''
    last 'Sinatra'
  end

  factory :cat, class: Artist do
    first 'Cat'
    middle ''
    last 'Stevens'
  end
  factory :pulp, class: Artist do
    first ''
    middle ''
    last 'Pulp'
  end

end
