# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :surface_playground,
  ecto_repos: [SurfacePlayground.Repo]

# Configures the endpoint
config :surface_playground, SurfacePlaygroundWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dVA1hZ9dqvVoNSYcRC+zILFCam4CJcTFLg8SQJ33fGlsZhYH13x16pmgU9B8OLsp",
  render_errors: [view: SurfacePlaygroundWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SurfacePlayground.PubSub,
  live_view: [signing_salt: "2kasnLyG"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
