# see
# https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
FactoryGirl.define do

  factory :song do
    title 'Hound Dog'
    artist  'Elvis'
    stars 4
  end

  factory :boots, class: Song do
    title  'These Boots Were Made For Walking'
    artist 'Nancy Sinatra'
    stars  5
  end
  factory :norwegian , class: Song do
    title  'Norwegian Wood'
    artist 'The Beatles'
    stars  3
  end
    factory :father_and_son , class: Song do
    title 'Father and Son'
    artist 'Cat Stevens'
    stars  3
  end
  factory :gambler , class: Song do
    title 'The Gambler'
    artist 'Kenny Rogers'
    stars  5
  end
  factory :common , class: Song do
    title 'Common People'
    artist 'Pulp'
    stars  2
  end
end
