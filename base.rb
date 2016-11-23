require_relative 'base_classes.rb'

puts "Хотите ли вы заполнить флому на повышение подолжности?
1. Да хочу!
2. Нет меня все устраивает..
3. Нет все достало увольняюсь!"

choise = gets.chomp.to_i

	if choise == 2
		puts 'Тогда успехов!'
	elsif choise == 3
		puts "Тогда заполните заявку на увольнение.."
		sleep 0.5
		worker_demissal = Modern.new
		worker_demissal.question_after_del
		worker_d = Modern.new

		worker_d.detq # Не существующий метод!

	elsif choise == 1
		worker = Base.new
	else
		puts "Неверно введено значение!"
		sleep 1
		puts "Повторите ввод"
	end
	sleep 2
	puts "Спасибо за ответы! Удачи."

