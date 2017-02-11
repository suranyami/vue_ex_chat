defmodule VueExChat.UserSocket do
  use Phoenix.Socket

  channel "room:*", VueExChat.RoomChannel

  transport :websocket, Phoenix.Transports.WebSocket, timeout: 45_000

  def connect(%{"username" => username}, socket) do
    {:ok, assign(socket, :username, username)}
  end

  def id(_socket), do: nil
end
