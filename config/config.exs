# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :welcome,
  ecto_repos: [Welcome.Repo]

# Configures the endpoint
config :welcome, WelcomeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/g0Yk4bbiZSyvHzihdsEF1kvOhoeXH1pEIoxH5d6qCJbOVqfYTa4QcOGvo9D/3rh",
  render_errors: [view: WelcomeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Welcome.PubSub,
  live_view: [signing_salt: "VSSK2m3m"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
