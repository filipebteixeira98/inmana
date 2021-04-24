defmodule Inmana.Welcomer do
  def welcome(params) do
    age = params["age"]

    name =
      params["name"]
      |> String.trim()
      |> String.downcase()

    # |> IO.inspect()

    if name == "Filipe Teixeira" and age == "23" do
      IO.puts("Hello, ", name)
    else
      IO.puts("You are not allowed to be here!")
    end
  end
end
