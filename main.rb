require_relative 'quiz.rb'
class Main
  def run_quiz_app
    quiz = Quiz.new
    quiz.start_quiz(10)
  end
end

main = Main.new
main.run_quiz_app
