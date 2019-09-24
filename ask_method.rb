# Метод для расчета кол-ва секунд до Нового года
def remain_sec(time_now)
  Time.new(time_now.year + 1).to_i - time_now.to_i
end

# Метод для вывода информации по запросу
def ask(str)

  # Проверка, является ли переданный аргумент строкой
  return unless str.is_a?(String)

  err_msg = "Был передан не корректный запрос"
  time = Time.new

  case str
  when "time" 
    puts time.strftime("Текущее время: %H:%M")
  when "date" 
    puts time.strftime("Текущая дата: %d %B, %Y")
  when "day" 
    puts time.strftime("Текущий день недели: %A")
  when "remaining days" 
    puts "До нового года осталось #{remain_sec(time) / 86400} дней"
  when "remaining weeks" 
    puts "До нового года осталось #{remain_sec(time) / 86400 / 7} недель"
  else 
    puts err_msg
  end
end

print "Введите ваш запрос: "
request = gets.chomp

ask(request)