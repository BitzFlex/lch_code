defmodule FL do
  def run do
    FL.fl_operator
  end

  # def recur(msg, n) when n > 0 do
  #   IO.puts(msg)
  #   recur(msg, n-1)
  # end

  # number? = fn
    # n when is_integer(n) and n > 2 -> true
    # n when is_integer(n) -> false
  # end

  def get_num1 do
    {num1, _} = IO.gets("Enter your first number: ") |> Integer.parse()

    cond do
      num1 <= 10 -> num1
      :else -> IO.puts "ERROR!! Enter the # between 1~10."
               FL.get_num1
    end
  end

  def get_num2 do
    {num2, _} = IO.gets("Enter your second number: ") |> Integer.parse()

    cond do
      num2 <= 10 -> num2
      :else -> IO.puts "ERROR!! Enter the # between 1~10."
               FL.get_num2
    end
  end

  def get_num3 do
    {num3, _} = IO.gets("Enter your third number: ") |> Integer.parse()

    cond do
      num3 <= 10 -> num3
      :else -> IO.puts "ERROR!! Enter the # between 1~10."
               FL.get_num3
    end
  end

  def get_num4 do
    {num4, _} = IO.gets("Enter your forth number: ") |> Integer.parse()

    cond do
      num4 <= 10 -> num4
      :else -> IO.puts "ERROR!! Enter the # between 1~10."
               FL.get_num4
    end
  end

  def get_num5 do
    {num5, _} = IO.gets("Enter your fifth number: ") |> Integer.parse()

    cond do
      num5 <= 10 -> num5
      :else -> IO.puts "ERROR!! Enter the # between 1~10."
               FL.get_num5
    end
  end

  def get_num6 do
    {num6, _} = IO.gets("Enter your sixth number: ") |> Integer.parse()

    cond do
      num6 <= 10 -> num6
      :else -> IO.puts "ERROR!! Enter the # between 1~10."
               FL.get_num6
    end
  end


  def fl_operator do

    num1 = FL.get_num1
    num2 = FL.get_num2
    num3 = FL.get_num3
    num4 = FL.get_num4
    num5 = FL.get_num5
    num6 = FL.get_num6

    # User # = get 6 #'s from the user(integer form)
    ### task : if the user enters the number that is out of the range, return error message and let the user re-enter the number
    # {num1, _} = IO.gets("Enter your first number: ") |> Integer.parse()
    # {num2, _} = IO.gets("Enter your second number: ") |> Integer.parse()
    # {num3, _} = IO.gets("Enter your third number: ") |> Integer.parse()
    # {num4, _} = IO.gets("Enter your forth number: ") |> Integer.parse()
    # {num5, _} = IO.gets("Enter your fifth number: ") |> Integer.parse()
    # {num6, _} = IO.gets("Enter your sixth number: ") |> Integer.parse()

    IO.puts " \n\nYou've chosen '#{num1}, #{num2}, #{num3}, #{num4}, #{num5}, #{num6}' as your lucky number. \n\nGOOD LUCK!!\n\n"
    # IO.puts "GOOD LUCK!!"

    # Lucky # = take 2 #'s from the system(ln1 & ln2 : integer form)
    lucky_num = Enum.take_random(1..10, 6) |> Enum.sort
    [ln1, ln2, ln3, ln4, ln5, ln6] = lucky_num

    IO.puts "The lucky numbers are '#{ln1}, #{ln2}, #{ln3}, #{ln4}, #{ln5}, #{ln6}'\n"

    # get result of user's #'s(num1 & num2)
    result1 = Enum.member?(lucky_num, num1) # atom form
    result2 = Enum.member?(lucky_num, num2) # atom form
    result3 = Enum.member?(lucky_num, num3) # atom form
    result4 = Enum.member?(lucky_num, num4) # atom form
    result5 = Enum.member?(lucky_num, num5) # atom form
    result6 = Enum.member?(lucky_num, num6) # atom form
    result_list = [result1, result2, result3, result4, result5, result6]

    IO.puts "result1 '#{result1}'"
    IO.puts "result2 '#{result2}'"
    IO.puts "result3 '#{result3}'"
    IO.puts "result4 '#{result4}'"
    IO.puts "result5 '#{result5}'"
    IO.puts "result6 '#{result6}'"

    num_true = Enum.count(result_list, fn x -> x == :true end)

    case num_true do
    0 ->
      IO.puts "All numbers are wrong."
    _ ->
      IO.puts "You've got #{num_true} numbers correct."

    end


  end # fl_operator end


end # defmodule FL end
