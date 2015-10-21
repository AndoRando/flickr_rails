FactoryGirl.define do
  factory(:post) do
    title('Puppy')
    image("/system/posts/images/000/000/001/original/doodle.jpg?1445453359")
    caption('A puppy')
  end
end

FactoryGirl.define do
  factory :user do
    email 'test@example.com'
    password 'password'
  end
end
