# https://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html#running-tests
# https://elixir-lang.org/getting-started/alias-require-and-import.html#use
# https://hexdocs.pm/ex_unit/ExUnit.html

# 初始化單元測試
ExUnit.start

defmodule MyTest do
  use ExUnit.Case                           # use 單元測試的模組

  # 基本測試
  test "simple test" do
    assert 1 + 1 == 2
  end

  # 一樣可以寫成單行
  test "simple test2", do: assert 1 + 1 == 2

  # 不一定要等於
  test "simple test3", do: assert 1 > 0

  # 函數直接呼叫比對
  test "simple test4" do
    foo = fn () -> nil end

    assert nil == foo.()
  end

  # 也有反相驗證
  test "refute is opposite of assert" do
    refute 1 + 1 == 3
  end

  # 測試會不會丟例外
  test :assert_raise do
    assert_raise ArithmeticError, fn ->
      1 + "x"
    end
  end

end
