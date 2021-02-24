defmodule Nlw4RocketpayWeb.UsersView do

  alias Nlw4Rocketpay.User

  def render("create.json", %{user: %User{id: id, name: name, nickname: nickname}}) do
    %{
      message: "User created",
      user: %{
        id: id,
        name: name,
        nickname: nickname
      }
    }
   end
end
