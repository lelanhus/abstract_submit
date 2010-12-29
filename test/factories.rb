# Place factories here.

Factory.define :submission do |f|
  f.sequence(:title) { |n| Faker::Lorem.sentence + "#{n}" }
  f.association :user
end

Factory.define :user do |f|
  f.sequence(:email) { |n| "joe-#{n}@example.com" }
  f.sequence(:password) { |n| "password-#{n}" }
  f.sequence(:password_confirmation) { |n| "password-#{n}" }
end