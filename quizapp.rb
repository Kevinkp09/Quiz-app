class Question
  attr_accessor :question, :answer
  def initialize(question, answer)
    @question = question
    @answer = answer
  end
end


q1 = "What is the capital of Japan?\n a)Beijing\n b)Seoul\n c)Tokyo\n d)Bangkok"
q2 = "Which planet is known as the Red Planet?\n a)Venus\n b)Mars\n c)Jupiter\n d)Saturn"
q3 = "In which year did the first moon landing occur?\n a)1969\n b)1975\n c)1983\n d)1990"
q4 = "Who wrote the play 'Romeo and Juliet'?\n a)William Shakespeare\n b)Jane Austen\n c)Charles Dickens\n d)Emily Brontë"
q5 = "What is the largest mammal on Earth?\n a)Elephant\n b)Blue Whale\n c)Giraffe\n d)Gorilla"

questions = [
  Question.new(q1, "c"),
  Question.new(q2, "b"),
  Question.new(q3, "a"),
  Question.new(q4, "a"),
  Question.new(q5, "b")
]

def run_quiz(questions, time_limit)
  answer = ""
  start_time = Time.now
  score = 0
  for que in questions
    puts que.question
    answer = gets.chomp
    if answer == que.answer
      score += 1
    end
    elapsed_time = Time.now - start_time
    if elapsed_time > time_limit
      puts "Time limit exceeded! Quiz terminated."
      break
    end
  end

  puts "You got #{score}"
end

run_quiz(questions, 20)
