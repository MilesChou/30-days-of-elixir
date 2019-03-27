defmodule Math do
  def inc(x), do: x + 1
  def dec(x), do: x - 1
  def sum(x, y), do: x + y
end

ExUnit.start

defmodule PipeOperatorTest do
  use ExUnit.Case
  import Math

  test "basic test" do
    actual = inc(inc(inc(dec(inc(0)))))

    assert actual == 3
  end

  test "pipe test" do
    actual = 0 |> inc() |> dec() |> inc() |> inc() |> inc()

    assert actual == 3
  end

  test "multi arity test" do
    actual = 0 |> inc() |> sum 10 |> inc() |> inc()

    assert actual == 13
  end

  test "multi arity with parentheses test" do
    actual = 0 |> inc() |> sum(10) |> inc() |> inc()

    assert actual == 13
  end

end
