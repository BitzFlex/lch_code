defmodule T_counter2 do

  def doc do # read all the words from the doc.

    file_name = String.trim(IO.gets "Enter the name of the file: ")
    {:ok, doc} = File.read(file_name)


    map = doc
          |> String.replace([",", ":", ".", "/", "_", "|", "[", "]", "{", "}", "(", ")", "="], "")
          |> String.downcase()
          |> String.split()
          |> Enum.group_by(fn (word) -> word end)
          |> Enum.reduce(%{}, fn ({x, y}, acc) -> Map.put(acc, x, Enum.count(y)) end)

    # doc_keys = map |> Map.keys
    word = String.trim(IO.gets "Search the word: ")
    count = Map.fetch(map, word)
    # {_, num} = Map.fetch(map, word)
    # result = Enum.member?(doc_keys, word)

    # if result == :true do
      # IO.puts "The word #{inspect(word)} appears #{inspect(num)} times in the text."
    # else
      # IO.puts "The word #{inspect(word)} does not appear in the text."
    # end

    case count do
      {:ok, num} ->
        IO.puts "The word #{inspect(word)} appears #{inspect(num)} times in the text."
      :error ->
        IO.puts "The word #{inspect(word)} does not appear in the text."
    end


  end

end
