defmodule Chat.Message do
  use Ecto.Schema
  import Ecto.Changeset
  alias Chat.Message
  require Logger

  schema "messages" do
    field :message, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Message{} = message, attrs) do
    message
    |> cast(attrs, [:name, :message])
    |> validate_required([:name, :message])
  end

  def get_messages(limit \\ 20) do
    Logger.info 'YO WAH'
    Logger.debug Chat.Repo.all(Message, limit: limit)
  end
end
