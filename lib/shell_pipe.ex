defmodule ShellPipe do
  def init(opts), do: opts

  def call(struct, _opts) do
    output = Porcelain.shell("echo 'Hello from shell'").out
    result = struct.data ++ [String.rstrip(output)]
    %{struct | data: result}
  end
end
