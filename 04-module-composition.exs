# https://elixirschool.com/en/lessons/basics/modules/#composition

defmodule Math.Foo do
  def sum(x, y), do: x + y
end

defmodule Math.Bar do
  def inc(x), do: x + 1
end

defmodule Context do
  alias Math.Foo

  # 使用 alias 呼叫 Math.Foo
  def add(x, y), do: Foo.sum(x, y)

  # 使用模組的全名呼叫 Math.Foo
  def addWithFullName(x, y), do: Math.Foo.sum(x, y)
end

IO.puts Context.add(2, 3)
IO.puts Context.addWithFullName(2, 3)

defmodule Context2 do
  alias Math.Foo, as: Bar

  # 使用 alias 呼叫 Math.Foo
  def add(x, y), do: Bar.sum(x, y)
end

IO.puts Context2.add(2, 3)

defmodule Context3 do
  alias Math.{Foo, Bar}

  # 使用 alias 呼叫 Math.Foo
  def add(x, y), do: Foo.sum(x, y)
  def ipp(x), do: Bar.inc(x)
end

IO.puts Context3.add(2, 3)
IO.puts Context3.ipp(2)

defmodule Context4 do
  import Math.Foo

  # 使用 alias 呼叫 Math.Foo
  def add(x, y), do: sum(x, y)
end

IO.puts Context4.add(2, 3)

defmodule Context5 do
  # 導入 sum/2
  import Math.Foo, only: [sum: 2]

  def add(x, y), do: sum(x, y)

  # 這行會炸，因為沒有 mux
  # def m(x, y), do: mux(x, y)
end

IO.puts Context5.add(2, 3)
