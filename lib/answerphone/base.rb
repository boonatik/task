module Answerphone
  class Base
    def initialize
      @topic_list = {}
    end

    def add_topic(topic) 
      @topic_list.store(topic.to_sym, question_list_object(topic))
    end

    def ask(question, topic = "all")
      if topic == "all"
        @topic_list.each { |k, v| puts v.answer(question) }
      else
        puts @topic_list[topic.to_sym].answer(question)
      end
    end
    
    def print_questions(topic = "all")
      topic == "all" ? print_all_topics : print_by_topic(topic)
    end

    def add_question(topic, question, answer)
      @topic_list[topic.to_sym].add_question(question, answer)
    end

    def delete_question(question, topic)
      @topic_list[topic.to_sym].delete(question)
    end

    private

      def print_all_topics
        @topic_list.each do |k, v|
          puts "Topic #{k}"
          v.print_questions
          puts
        end
      end

      def print_by_topic(topic)
        @topic_list[topic.to_sym].print_questions
      end

      def question_list_object(topic)
        case topic
        when "number"
          NumberQuestion.new
        else
          QuestionList.new(topic)
        end
      end

  end
end