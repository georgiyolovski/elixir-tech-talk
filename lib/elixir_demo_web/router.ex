defmodule ElixirDemoWeb.Router do
  use ElixirDemoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirDemoWeb do
    pipe_through :api

    get("/users", UserController, :index)
  end
end
