defmodule VueExChat.Presence do
  use Phoenix.Presence, otp_app: :vue_ex_chat, pubsub_server: VueExChat.PubSub
end
