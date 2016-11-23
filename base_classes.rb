class Base
	def initialize
	data_base = {}
	puts "Введите ваше имя."
	data_base[:name] = gets.chomp
	puts "Введите вашу фамилию."
	data_base[:last_name] = gets.chomp.to_s
	puts "Сколько вам лет?"
	data_base[:age] = gets.chomp.to_i
	puts "Введите ваш почтовый ящик."
	data_base[:email] = gets.chomp.to_s
	puts "Введите ваш номер телефона."
	data_base[:tel_number] = gets.chomp.to_i
	puts "Введите должность  на какую претендуете."
	data_base[:position] = gets.chomp.to_s
	puts "Вашы персональные данные #{data_base.values}."
	end
end

class Demission
	def  question_after_del
	data_base = {}
	puts "Введите ваше имя."
	data_base[:name] = gets.chomp
	puts "Введите вашу фамилию."
	data_base[:last_name] = gets.chomp.to_s
	puts "Сколько вам лет?"
	data_base[:age] = gets.chomp.to_i
	puts "Введите ваш почтовый ящик."
	data_base[:email] = gets.chomp.to_s
	puts "Введите ваш номер телефона."
	data_base[:tel_number] = gets.chomp.to_i
	puts "Какая причина вашего увольнения."
	data_base[:position] = gets.chomp.to_s
	end
end

class Modern < Demission

	def method_missing(method_name)
		puts "Данный метод #{method_name}не найден!"
	end

	def question_after_del
		super
		puts "Что нужно изменить в нашей фирме? Что бы сделать её лутьше?"
		puts "Каждый ответ ДА мы щитаем полезным"
		sleep 1

	questions = [
			"Увеличить рабочий день?",
			"Уменьшить рабочий день?",
			"Увеличить зарплату до 2к зелени?",
			"Не платить ничего сотрудникам?",
			"Читать маркса сотрудникам?",
			"Дать возможность спать на работе?",
			"Разрешить алкоголь и наркотики?",
			"Разрешить играть в футбол в офисе?",
			"Сделать бессплатный обед в рессторане?",
			"Купить всем сотрудникам Iphone 7?"
				]

	yes_answers = 0

	for item in questions do
	puts item

	user_input = nil
	
	while (user_input != "да" and user_input != "нет")
		puts "Введите да или нет и нажмите Ввод!"
		user_input = gets.chomp.downcase
	end
	puts "Полезных ответов #{yes_answers}."

	if (user_input == "да")
		yes_answers += 1
			end
		end
	end
end


# public_send(:name, gets.chomp.to_s)
