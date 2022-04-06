defmodule ElixirDemoWeb.UserController do
  use ElixirDemoWeb, :controller
  alias ElixirDemo.Service

  def index(conn, params) do
    users = Service.users(params)

    conn
    |> json(users)
  end
end
