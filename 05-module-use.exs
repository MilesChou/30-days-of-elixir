# https://elixirschool.com/en/lessons/basics/modules/#composition

defmodule Hello do
  defmacro __using__(_opts) do
    quote do
      def hello(name), do: "Hi, #{name}"
    end
  end
end

defmodule Example do
  use Hello
end

IO.puts Example.hello("Sean")

defmodule Hello2 do
  defmacro __using__(opts) do
    greeting = Keyword.get(opts, :greeting, "Hi")

    quote do
      def hello(name), do: unquote(greeting) <> ", " <> name
    end
  end
end

defmodule Example2 do
  use Hello2, greeting: "Hola"
end

IO.puts Example2.hello("Sean")

defmodule Hello3 do
  defmacro __using__() do
    quote do
      def hello(name), do: "Hi, #{name}"
    end
  end
end

defmodule Example3 do
  # 這裡不能這樣用，被 use 的模組一定要有 __using__/1
  # use Hello3
end

defmodule Hello4 do
  def __using__(opt) do
    quote do
      def hello(name), do: "Hi, #{name}"
    end
  end
end

defmodule Example4 do
  use Hello4
end

# 上面的語法雖然沒有問題，但 __using 若不是 macro，use 就會無效。謎？
# Example4.hello("Sean")
