class Question
  attr_accessor :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end
end

def create_questions(data)
  questions = []
  data.each do |question_data|
    questions << Question.new(question_data[:text], question_data[:answer])
  end
  questions
end

def run_quiz(questions, time_limit)
  score = 0
  start_time = Time.now

  questions.each do |question|
    correct_answer = true

    while correct_answer
      puts question.question
      answer = gets.chomp

      if answer == question.answer
        score += 1
        correct_answer = false
      else
        puts "Incorrect answer. Please try again."
      end
    end

    elapsed_time = Time.now - start_time
    if elapsed_time > time_limit
      puts "Time limit exceeded! Quiz terminated."
      break
    end
  end

  puts "Your score: #{score} "
end

questions_data = [
  { text: "What is the capital of Japan?\n a)Beijing\n b)Seoul\n c)Tokyo\n d)Bangkok", answer: "c" },
  { text: "Which planet is known as the Red Planet?\n a)Venus\n b)Mars\n c)Jupiter\n d)Saturn", answer: "b" },
  { text: "In which year did the first moon landing occur?\n a)1969\n b)1975\n c)1983\n d)1990", answer: "a" },
  { text: "Who wrote the play 'Romeo and Juliet'?\n a)William Shakespeare\n b)Jane Austen\n c)Charles Dickens\n d)Emily Brontë", answer: "a" },
  { text: "What is the largest mammal on Earth?\n a)Elephant\n b)Blue Whale\n c)Giraffe\n d)Gorilla", answer: "b" }
]

questions = create_questions(questions_data)

run_quiz(questions, 60)
