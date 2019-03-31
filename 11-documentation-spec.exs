
defmodule My do
  @spec sum(integer, integer) :: integer
  def sum(a, b) do
    a + b
  end
end

IO.puts My.sum(1, 2)

# (ArithmeticError) bad argument in arithmetic expression: 1 + "2"
# IO.puts My.sum(1, "2")

defmodule People do
  @type t(name, age) :: %People{name: name, age: age}
  @type t :: %People{name: charlist, age: integer}
  defstruct name: nil, age: nil
end

defmodule Some do
  def run do
    a = %People{name: "some"}
    IO.puts a.name
    IO.puts a.age
  end
end

Some.run()