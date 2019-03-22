# https://elixir-lang.org/getting-started/basic-types.html#anonymous-functions
# https://elixir-lang.org/getting-started/modules-and-functions.html
# https://elixirschool.com/en/lessons/basics/functions/

# 定義匿名函數
sum = fn (x, y) -> x + y end

# 呼叫的方法
IO.puts sum.(2, 3)

# 確認它是否為 function
IO.puts is_function(sum)

# 確認它是否為函數，且第二個參數是指，這個 function 有幾個參數
IO.puts is_function(sum, 2)

# 簡寫法
sum2 = &(&1 + &2)

# 呼叫的方法
IO.puts sum2.(2, 3)

# 確認它是否為 function
IO.puts is_function(sum2)

# 確認它是否為函數，且第二個參數是指，這個 function 有幾個參數
IO.puts is_function(sum2, 2)

# 使用命名函數，同時也定義匿名函數，然後都各呼叫一次
defmodule Math do
  def context do
    sum = getFn()

    # 這個是命名函數
    IO.puts sum(2, 3)

    # 這個是匿名函數
    IO.puts sum.(2, 3)

    # 也可以串在一起
    IO.puts getFn().(2, 3)
  end

  # 單行定義法
  def sum(x, y), do: x + y

  # 單行定義法也可以用在匿名函數
  def getFn(), do: fn (x, y) -> x + y end
end

Math.context()
