require 'yaml'

module Answerphone
  class QuestionList
    attr_reader :topic, :questions  

    def initialize(topic)
      @questions = YAML.load_file(File.expand_path("./resource/#{topic}.yml"))
    end

    def print_questions
      @questions.map { |k, v| puts "#{k} - #{v}" }
    end

    def answer(question)
      @questions[question].nil? ? "we don't know" : @questions[question]
    end

    def add_question(question, answer)
      @questions.store(question, answer)
    end

    def delete(question)
      @questions.delete(question)
    end
  end
end