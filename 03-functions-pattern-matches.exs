# https://elixirschool.com/en/lessons/basics/functions/

# 定義帶有 pattern matches 的匿名函數
handler = fn
  # ok pattern
  {:ok} -> IO.puts "Success"

  # ok 並帶有 result 的 pattern
  {:ok, result} -> IO.puts "Success and result: " <> result

  # error pattern
  {:error} -> IO.puts "ERROR!"
end

handler.({:ok})
handler.({:ok, "some result"})
handler.({:error})

# 定義 pattern 有衝突的匿名函數
some = fn
  # ok 並帶有 result 的 pattern
  {:ok, result} -> IO.puts "Success and result: " <> result

  # 這個 pattern 永遠進不來
  {:ok, something} -> IO.puts "Nooooooooo!"
end

some.({:ok, "some result"})

# 定義不同參數的命名函數
defmodule Math do
  def sum(), do: 0
  def sum(x), do: x
  def sum(x, y), do: x + y
end

IO.puts Math.sum()
IO.puts Math.sum(10)
IO.puts Math.sum(10, 20)
