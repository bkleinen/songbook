# see
# https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
FactoryGirl.define do

  factory :song do
    title 'Hound Dog'
    artist
    stars 4
  end


  factory :common , class: Song do
    title 'Common People'
    association :artist, factory: :pulp
    stars 4
  end

  factory :boots, class: Song do
    title  'These Boots Were Made For Walking'
    artist
    #association :artist, factory: :nancy
    stars  5
  end

  factory :gambler , class: Song do
    title 'The Gambler'
    association :artist, factory: :kenny
    stars  5
  end
   factory :father_and_son , class: Song do
    title 'Father and Son'
    association :artist, factory: :cat
    stars  5
  end

end
