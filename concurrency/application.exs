IO.puts("Starting...")

start_time = :os.system_time(:millisecond)
1..100_000
|> Enum.map(fn _ -> Task.async(fn -> :timer.sleep(100) end) end)
|> Task.await_many(:infinity)

end_time = :os.system_time(:millisecond)

IO.puts("Ended in #{(end_time - start_time) / 1000}s")
