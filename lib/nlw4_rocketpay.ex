defmodule Nlw4Rocketpay do
  alias Nlw4Rocketpay.Users.Create, as: UserCreate
  alias Nlw4Rocketpay.Accounts.Deposit
  # alias Nlw4Rocketpay.Accounts.Withdraw

  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call

  # defdelegate deposit(params), to: Withdraw, as: :call
end
