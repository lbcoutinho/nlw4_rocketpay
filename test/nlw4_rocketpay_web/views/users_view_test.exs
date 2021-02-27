defmodule Nlw4Rocketpay.UsersViewTest do
  use Nlw4RocketpayWeb.ConnCase, async: true

  import Phoenix.View

  alias Nlw4Rocketpay.{Account, User}
  alias Nlw4RocketpayWeb.UsersView

  test "renders create.json" do
    params = %{
      name: "Leandro",
      password: "123456",
      nickname: "lbcoutinho",
      email: "leandro@gmail.com",
      age: 31
    }

    {:ok, %User{id: user_id, account: %Account{id: account_id}} = user} = Nlw4Rocketpay.create_user(params)

    response = render(UsersView, "create.json", user: user)
    expected_response = %{
      message: "User created",
      user: %{
        account: %{
          balance: Decimal.new("0.00"),
          id: account_id
        },
        id: user_id,
        name: "Leandro",
        nickname: "lbcoutinho"
      }
    }

    assert response == expected_response
  end
end
