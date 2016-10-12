use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :rumbl, Rumbl.Endpoint,
  secret_key_base: "sOLSxrtSS4VfD3U7ecNGbBHWwI9H8PhZXXILGgj6nHG6pISB2AzfMCrY4Hxu/O8t"

# Configure your database
config :rumbl, Rumbl.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "rumbl_prod",
  pool_size: 20
