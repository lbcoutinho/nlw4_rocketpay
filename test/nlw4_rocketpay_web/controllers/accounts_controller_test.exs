defmodule Nlw4RocketpayWeb.AccountsControllerTest do
  use Nlw4RocketpayWeb.ConnCase, async: true

  alias Nlw4Rocketpay.{Account, User}

  describe "deposit/2" do
    setup %{conn: conn} do
      params = %{
        name: "Leandro",
        password: "123456",
        nickname: "lbcoutinho",
        email: "leandro@gmail.com",
        age: 31
      }

      {:ok, %User{account: %Account{id: account_id}}} = Nlw4Rocketpay.create_user(params)

      conn = put_req_header(conn, "authorization", "Basic bmx3NDplbGl4aXI=")

      {:ok, conn: conn, account_id: account_id}
    end

    test "when all params are valid, make the deposit", %{conn: conn, account_id: account_id} do
      params = %{"value" => "50.0"}

      response =
        conn
        |> post(Routes.accounts_path(conn, :deposit, account_id, params))
        |> json_response(:ok)

      assert %{
                "account" => %{"balance" => "50.00", "id" => _id},
                "message" => "Balance updated successfully"
              } = response
    end

    test "when there are invalid params, returns an error", %{conn: conn, account_id: account_id} do
      params = %{"value" => "invalid"}

      response =
        conn
        |> post(Routes.accounts_path(conn, :deposit, account_id, params))
        |> json_response(:bad_request)

      expected_response = %{"message" => "Invalid deposit value!"}

      assert response == expected_response
    end
  end
end
