defmodule Nlw4RocketpayWeb.FallbackController do
  use Nlw4RocketpayWeb, :controller


  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(Nlw4RocketpayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
