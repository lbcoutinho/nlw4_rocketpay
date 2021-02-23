# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :nlw4_rocketpay,
  ecto_repos: [Nlw4Rocketpay.Repo]

# Configures the endpoint
config :nlw4_rocketpay, Nlw4RocketpayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FKORFMhtk/C+7WARqWczesvj/VV/z6Hps+1R0XBXPN+HLc9OctsfCrgShMoUmFa7",
  render_errors: [view: Nlw4RocketpayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Nlw4Rocketpay.PubSub,
  live_view: [signing_salt: "vnmJgAaX"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
