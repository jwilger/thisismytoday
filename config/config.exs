# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :this_is_my_today,
  ecto_repos: [ThisIsMyToday.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :this_is_my_today, ThisIsMyTodayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gf1XB6qF7T+QcP6Uv3sv9pgzHiKujlEg8zWOspUF86r1YMhZrx0kP08EB6PckgR7",
  render_errors: [view: ThisIsMyTodayWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ThisIsMyToday.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "lopDQ4ZQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
