defmodule ElixirPipe do
  def init(opts), do: opts

  def call(struct, _opts) do
    result = Enum.join(struct.data, ", ")
    %{struct | data: result}
  end
end
