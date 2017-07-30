defmodule Test do
    @moduledoc """
    Syntax coloring test
    """

    defstruct name: "John", age: 27

    import Map

    @name "syntax test"

    @doc """
    Dummy function.
    """
    def short(x \\ %{}), do: x

    def func(xs, list) when is_list(list), do: length(list)
    def func(xs, _ignore) do
        four = 2 + 2
        "some string"
        'binary'
        ~r/^(group)*[class]+.?(?!abc)\w$/
        ~w(some string list)
        ~c(a b c)
        ~N[2017-02-09]
        y = xs |> Enum.map(&(String.upcase(&1)))
        y = xs |> Enum.map(fn x -> String.upcase(x) end)
        #this code makes no sense
        case y do
            nil ->
                nil
            [] ->
                []
            [z | zs] ->
                %{"some" => :map}
        end
        :atom
        [key: :word, list: :abc]
        user = %Test{name: "Michael"}
        IO.puts "Name: #{user.name}"
        !(true || false && true)
        not (true or false and true)
    end
end