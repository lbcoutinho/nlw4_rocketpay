defmodule Nlw4Rocketpay do
  alias Nlw4Rocketpay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
