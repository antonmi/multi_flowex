defmodule PythonPipe do
  @python_dir Application.app_dir(:multi_flowex, "priv/python")
  @main_file "main"

  use Export.Python

  def init(opts \\ %{}) do
    {:ok, py} = Python.start(python_path: @python_dir)
    Map.put(opts, :py, py)
  end

  def call(struct, opts) do
    {"ok", result} = Python.call(opts.py, append(struct.data, "Hello from Python"), from_file: @main_file)
    %{struct | data: result}
  end
end
