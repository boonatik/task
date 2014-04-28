module Answerphone
  class NumberQuestion < QuestionList
    
    def initialize
      @questions = {}
    end

    def print_questions
      puts "There is no questions"
    end

    def answer(question)
      num = question.scan(/\d+/ ).first
      num ? compare(num) : puts("No numbers")
    end

    def add_question(question, answer)
      puts "You cannot add question to number topic"
    end

    private

      def compare(num)
        if num.to_i >= 100
          puts "#{num} >=100"
        else
          puts "#{num} <100"
        end        
      end
  end
end