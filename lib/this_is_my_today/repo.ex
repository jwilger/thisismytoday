defmodule ThisIsMyToday.Repo do
  use Ecto.Repo,
    otp_app: :this_is_my_today,
    adapter: Ecto.Adapters.Postgres
end
