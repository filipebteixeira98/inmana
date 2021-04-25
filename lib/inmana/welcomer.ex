defmodule Inmana.Welcomer do
  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)

    # |> IO.inspect()

    # if name == "Filipe Teixeira" and age == "23" do
    #   IO.puts("Hello, ", name)
    # else
    #   IO.puts("You are not allowed to be here!")
    # end
  end

  defp evaluate("ethan", 23) do
    {:ok, "Hello, Ethan"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome, #{name}!"}
  end

  defp evaluate(name, _age) do
    {:error, "You shall not pass, #{name}"}
  end
end
