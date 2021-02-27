defmodule Nlw4Rocketpay do
  alias Nlw4Rocketpay.Users.Create, as: UserCreate
  alias Nlw4Rocketpay.Accounts.{Deposit, Withdraw, Transaction}

  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call

  defdelegate withdraw(params), to: Withdraw, as: :call

  defdelegate transaction(params), to: Transaction, as: :call
end
