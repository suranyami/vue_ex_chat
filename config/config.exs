use Mix.Config

if Mix.env == :dev do
  config :mix_test_watch, tasks: ~w(test dogma), clear: true
end

# Add HAML engine.
config :phoenix, :template_engines, haml: PhoenixHaml.Engine

config :vue_ex_chat,
  ecto_repos: [VueExChat.Repo]

# Configures the endpoint
config :vue_ex_chat, VueExChat.Endpoint,
  url: [host: "localhost"],
  secret_key_base:
    "hRl0/S0o8tkHsJRPbCNsZ9rHHiBtKTdJhE5bfCl2g7VANq74e4iKLhMxhc5hw2H2",
  render_errors: [view: VueExChat.ErrorView, accepts: ~w(html json)],
  pubsub: [name: VueExChat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
