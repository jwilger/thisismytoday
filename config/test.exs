use Mix.Config

database_url =
  System.get_env("TEST_DATABASE_URL") ||
    "ecto://this_is_my_today:this_is_my_today@localhost:9071/this_is_my_today_test"

# Configure your database
config :this_is_my_today, ThisIsMyToday.Repo,
  url: database_url,
  show_sensitive_data_on_connection_error: true,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :this_is_my_today, ThisIsMyTodayWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :mix_test_watch,
  tasks: [
    "test --stale --exclude pending",
    "credo --strict",
    "sobelow --config --exit --verbose",
    "dialyzer"
  ],
  ansi_enabled: :ignore,
  clear: true
