defmodule Nlw4Rocketpay.Repo do
  use Ecto.Repo,
    otp_app: :nlw4_rocketpay,
    adapter: Ecto.Adapters.Postgres
end
