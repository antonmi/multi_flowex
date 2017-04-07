defmodule ElixirPipe do
  defstruct [:data]

  def init(opts), do: opts

  def call(%{data: data}, _opts) do
    %{data: Enum.join(data, ", ")}
  end
end
