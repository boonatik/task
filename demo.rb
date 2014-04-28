require File.expand_path('./task')

answerphone = Answerphone::Base.new
answerphone.add_topic('weather')
answerphone.print_questions('weather')
answerphone.ask("Is it warm?")
answerphone.ask("What season?", "weather")
answerphone.ask("who are you?")
answerphone.add_question("weather", "Temperature?", "+15")
answerphone.print_questions

answerphone.add_topic("number")
answerphone.ask("sdf 4545 ghh100 f 56", "number")
answerphone.ask("sdf12", "number")
answerphone.ask("sdfetwtet", "number")
answerphone.print_questions

answerphone.delete_question("What season?", "weather")
answerphone.print_questions