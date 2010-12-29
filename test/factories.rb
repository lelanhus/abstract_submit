# Place factories here.

Factory.define :submission do |f|
  f.sequence(:title) { |n| Faker::Lorem.sentence + "#{n}" }
  f.body Faker::Lorem.sentences
  f.association :user
end

Factory.define :user do |f|
  f.sequence(:email) { |n| "joe-#{n}@example.com" }
  f.sequence(:password) { |n| "password-#{n}" }
  f.sequence(:password_confirmation) { |n| "password-#{n}" }
  f.association :institution
end

Factory.define :institution do |f|
  f.sequence(:name) { |n| Faker::Company.name + "#{n}" }
end