defmodule Nlw4RocketpayWeb.AccountsController do
  use Nlw4RocketpayWeb, :controller

  alias Nlw4Rocketpay.Account
  alias Nlw4Rocketpay.Accounts.Transactions.Response, as: TransactionResponse

  action_fallback Nlw4RocketpayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Nlw4Rocketpay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- Nlw4Rocketpay.withdraw(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- Nlw4Rocketpay.transaction(params) do
      conn
      |> put_status(:ok)
      |> render("transaction.json", transaction: transaction)
    end
  end
end
