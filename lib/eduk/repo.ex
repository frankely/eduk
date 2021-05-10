defmodule Eduk.Repo do
  use Ecto.Repo,
    otp_app: :eduk,
    adapter: Ecto.Adapters.Postgres
end
