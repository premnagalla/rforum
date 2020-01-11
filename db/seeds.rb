# For seed(base) data, While running the app for first time
  # rake db:create db:migrate db:seed
# For seed(base) data, by removing any test data created
  # rake db:drop db:create db:migrate db:seed

include ApplicationHelper

1.upto 10 do|n|
  u = User.create(first_name: "user#{n}", last_name: "last#{n}", email: "user_email#{n}@yopmail.com")

  Question.create(title: "test title #{n}", description: "test question description #{n}", user_id: u.id)
end
p 'Created Users & Questions'
quess = Question.all
users = User.all

1.upto 50 do|an|
  Answer.create(user_id: users[rand(0..9)].id,question_id: quess[rand(0..9)].id, content: "Answer number #{an}")
end
p 'Created Answers'

answs = Answer.all
comm_able = (quess+answs)

1.upto 200 do|n|
  comment = Comment.create(user_id: users[rand(0..9)].id, comment: create_content(84), commentable: comm_able[rand(0..69)])
  if comment.errors.present?
    p comment.errors
  else
    comm_able << comment
  end
end
p 'Created Comments'
