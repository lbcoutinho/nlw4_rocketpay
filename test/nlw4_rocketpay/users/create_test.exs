defmodule Nlw4Rocketpay.Users.CreateTest do
  use Nlw4Rocketpay.DataCase, async: true

  alias Nlw4Rocketpay.User
  alias Nlw4Rocketpay.Users.Create

  describe "call/1" do
    test "when all params are valid, return an user" do
      params = %{
        name: "Leandro",
        password: "123456",
        nickname: "lbcoutinho",
        email: "leandro@gmail.com",
        age: 31
      }

      {:ok, %User{id: user_id}} = Create.call(params)
      user = Repo.get(User, user_id)

      assert %User{name: "Leandro", age: 31, id: ^user_id} = user
    end

    test "when there are invalid params, return an error" do
      params = %{
        name: "Leandro",
        nickname: "lbcoutinho",
        email: "leandro@gmail.com",
        age: 15
      }

      {:error, changeset} = Create.call(params)

      expected_response = %{age: ["must be greater than or equal to 18"], password: ["can't be blank"]}

      assert errors_on(changeset) == expected_response
    end
  end
end
