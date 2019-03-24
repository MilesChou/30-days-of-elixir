user = %{first: "Sean", last: "Callan"}

IO.puts with {:ok, first} <- Map.fetch(user, :first),
             {:ok, last} <- Map.fetch(user, :last),
             do: last <> ", " <> first

user = %{last: "Callan"}

IO.puts with {:ok, first} <- Map.fetch(user, :first),
        {:ok, last} <- Map.fetch(user, :last),
        do: last <> ", " <> first