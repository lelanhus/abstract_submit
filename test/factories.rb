# Place factories here.

Factory.define :submission do |f|
  f.sequence(:title) { |n| Faker::Lorem.sentence + "#{n}" }
  f.sequence(:user_id) { |n| n }
end