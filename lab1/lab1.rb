require 'date'

def task1 n, str
  counter = 1
  while counter <= n
    puts str*counter
    counter += 1
  end
end


def task2 str
  puts str.start_with?("if")
end


def task3 str
  temp = str.chr
  str[0] = str[str.length - 1]
  str[str.length - 1] = temp
  puts str
end

def task4 str
  temp = str[str.length - 1]
  puts temp + str + temp
end


def task5(year)
  if Date.leap?(year)
    puts year.to_s + (" is leap year")
  else
    puts year.to_s + (" is not leap year")
  end
end



def task6 arr
  puts arr.rotate(1)
end



def task7 nums
  sum = 0
  flag = false
  nums.each do |n|
    if n == 17
      flag = true
    elsif flag
      flag = false
    else
      sum += n
    end
  end
  puts sum
end



task1(3, "a")

task2("iftest")

task3("Java")

task4("hello")

task5(2019)

task6([1, 2, 3])

task7([17, 2, 3, 7, 5, 7])