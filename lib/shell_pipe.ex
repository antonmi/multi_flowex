defmodule ShellPipe do
  defstruct [:data]

  def init(opts), do: opts

  def call(%{data: data}, _opts) do
    output = Porcelain.shell("echo 'Hello from shell'").out
    result = data ++ [String.rstrip(output)]
    %{data: result}
  end
end
