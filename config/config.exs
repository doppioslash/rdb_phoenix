# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rdb_phoenix,
  ecto_repos: [RdbPhoenix.Repo]

# Configures the endpoint
config :rdb_phoenix, RdbPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5WmRBS+TKlzCXwLpMBGDndbG21toCW64iI16HmxAp15vwobZctGqXyq2W4eIPglv",
  render_errors: [view: RdbPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RdbPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
