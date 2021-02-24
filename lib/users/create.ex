defmodule Nlw4Rocketpay.Users.Create do
  alias Nlw4Rocketpay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
