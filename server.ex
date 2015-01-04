defmodule App_router do
  use Plug.Router
  require EEx

  plug :match
  plug :dispatch

  defmodule Index do
    EEx.function_from_file :def, :render, "views/index.html.eex"
  end

  get "/" do
    send_resp(conn, 200, Index.render)
  end

  match _ do
    send_resp(conn, 404, "page not found")
  end

end

Plug.Adapters.Cowboy.http App_router, [], port: 4000
IO.puts "Plug Router Listening on Port 4000"