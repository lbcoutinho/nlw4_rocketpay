defmodule Nlw4RocketpayWeb.UsersController do
  use Nlw4RocketpayWeb, :controller

  alias Nlw4Rocketpay.User

  action_fallback Nlw4RocketpayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Nlw4Rocketpay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
