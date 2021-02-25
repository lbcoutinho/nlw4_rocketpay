defmodule Nlw4RocketpayWeb.AccountsController do
  use Nlw4RocketpayWeb, :controller

  alias Nlw4Rocketpay.Account

  action_fallback Nlw4RocketpayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Nlw4Rocketpay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  # def withdraw(conn, params) do

  # end
end
