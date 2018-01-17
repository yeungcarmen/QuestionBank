
 # 1 - migration to add statement to questions table - done
 # 2 - think and implement validation (presence) - done
 # 3 - create a test senerio 

t1 = Teacher.create!(username: "macy", fullname: "Macy Ng", email: "macy.ng@preface.education", password: "123456")
t2 = Teacher.create!(username: "connie", fullname: "Connie Sze", email: "connie.sze@preface.education", password: "123456")
t3 = Teacher.create!(username: "edwin", fullname: "Edwin Chiu", email: "edwin.chiu@preface.education", password: "123456")

sub1 = Subject.create!(name: "Chinese")
sub2 = Subject.create!(name: "English")
sub3 = Subject.create!(name: "Maths")

qt1 = QueType.create!(name: "Fill")
qt2 = QueType.create!(name: "MC")
qt3 = QueType.create!(name: "Text")

q1 = Question.create!(statement: "What is the name of the mouse in Disney?", answer: "Mickey Mouse", que_type: qt3, subject: sub2)
q2 = Question.create!(statement: "Who is the prettest girl in Preface? A.Janny B.Queena C.Carmen D.All of them", answer: "D.All of them", que_type: qt2, subject: sub2)
q3 = Question.create!(statement: "Carmen is ____ years old.", answer: "18", que_type: qt1, subject: sub3)

ht1 = Hashtag.create!(name: "Grammar", subject: sub2)
ht2 = Hashtag.create!(name: "Common Sense", subject: sub2)
ht3 = Hashtag.create!(name: "Summation", subject: sub3)
ht4 = Hashtag.create!(name: "Disney", subject: sub2)
ht5 = Hashtag.create!(name: "Animal", subject: sub2)

#q1.hashtags << [ht1, ht2, ht4]

HashtagQuestion.create!(hashtag: ht1, question: q1)
HashtagQuestion.create!(hashtag: ht4, question: q1)
HashtagQuestion.create!(hashtag: ht1, question: q2)
HashtagQuestion.create!(hashtag: ht3, question: q3)

SubjectTeacher.create!(subject: sub1, teacher: t1)
SubjectTeacher.create!(subject: sub2, teacher: t2)
SubjectTeacher.create!(subject: sub3, teacher: t3)
