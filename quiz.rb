require_relative 'question.rb'
class Quiz
  QUESTIONS_DATA = [
    { text: "What is the capital of Japan?\n a)Beijing\n b)Seoul\n c)Tokyo\n d)Bangkok", answer: "c" },
    { text: "Which planet is known as the Red Planet?\n a)Venus\n b)Mars\n c)Jupiter\n d)Saturn", answer: "b" },
    { text: "In which year did the first moon landing occur?\n a)1969\n b)1975\n c)1983\n d)1990", answer: "a" },
    { text: "Who wrote the play 'Romeo and Juliet'?\n a)William Shakespeare\n b)Jane Austen\n c)Charles Dickens\n d)Emily Brontë", answer: "a" },
    { text: "What is the largest mammal on Earth?\n a)Elephant\n b)Blue Whale\n c)Giraffe\n d)Gorilla", answer: "b" }
  ]
  question = Question.new
  Question::QUESTIONS_DATA

  def start_quiz(time_limit)
    score = 0

    QUESTIONS_DATA.each do |data|
      puts data[:text]
      start_time = Time.now
      loop do
        user_answer = gets.chomp
        if user_answer == data[:answer]
          score += 1
          break
        else
          puts "Incorrect. Try again."
        end
      end
        elapsed_time = Time.now - start_time
        if elapsed_time > time_limit
         puts "Time limit exceeded! Quiz terminated."
        break
      end
    end
    puts "You got #{score} "
  end
end
