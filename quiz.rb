require_relative 'question.rb'
class Quiz
  abc = Question.new
  @@questions = abc.question

  def start_quiz(time_limit)
    score = 0
    @@questions.each do |data|
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
