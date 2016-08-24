use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rdb_phoenix, RdbPhoenix.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :rdb_phoenix, RdbPhoenix.Repo,
  adapter: RethinkDB.Ecto,
  database: "test",
  pool_size: 10,
  hostname: "192.168.99.100",
  port: 32776
