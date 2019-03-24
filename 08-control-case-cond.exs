# https://elixir-lang.org/getting-started/case-cond-and-if.html#case
# https://elixirschool.com/zh-hant/lessons/basics/control-structures/
# copy from day 03

case {:ok, "something"} do
  {:ok} -> IO.puts "Success"

  # 會比對到這個
  {:ok, result} -> IO.puts "Success and result: " <> result

  {:error} -> IO.puts "ERROR!"
  _ -> IO.puts "Nothing match"
end

case {1, 2, 3} do
  # 比對到就會綁定值
  {1, x, y} -> IO.puts x + y
  _ -> IO.puts "Nothing match"
end

# 一樣可以使用 pin

x = 10

case {1, 2, 3} do
  # 因 x 值被固定在 10，所以這個比對不到
  {1, ^x, y} -> IO.puts x + y

  # 會比對到這個
  _ -> IO.puts "Nothing match"
end

# 官方的例子

cond do
  2 + 2 == 5 ->
    IO.puts "This will not be true"
  2 * 2 == 3 ->
    IO.puts "Nor this"

  1 + 1 == 2 ->
    # 會出現這個
    IO.puts "But this will"
end

cond do
  false -> IO.puts "Nothing match"
end
