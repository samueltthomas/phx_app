# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_app,
  ecto_repos: [PhxApp.Repo]

# Configures the endpoint
config :phx_app, PhxAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+oOAOx+WzWTEtxmsFHLx6xyFBtC6EcRVQADz0SU5UTVH8/Sy/QnD0dbW1pmxLjFc",
  render_errors: [view: PhxAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
