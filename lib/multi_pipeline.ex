defmodule MultiPipeline do
  use Flowex.Pipeline

  defstruct data: []

  pipe RubyPipe, 3
  pipe PythonPipe, 4
  pipe ShellPipe, 2
  pipe ElixirPipe
end
