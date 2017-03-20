10.times do |n|
  User.create! name: "User #{n}", email: "email-#{n}@gmail.com"
end
