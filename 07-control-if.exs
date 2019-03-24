# https://elixirschool.com/zh-hant/lessons/basics/control-structures/


if true do
  IO.puts "if true"
end

if :true do
  IO.puts "if :true"
end

if [] do
  IO.puts "if []"
end

unless false do
  IO.puts "unless false"
end

unless :false do
  IO.puts "unless :false"
end

unless nil do
  IO.puts "unless nil"
end

unless :nil do
  IO.puts "unless :nil"
end

if false do
  IO.puts "nothing"
else
  IO.puts "if else"
end
