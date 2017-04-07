defmodule PythonPipe do
  defstruct [:data]

  @python_dir Application.app_dir(:multi_flowex, "priv/python")
  @main_file "main"

  use Export.Python

  def init(opts \\ %{}) do
    {:ok, py} = Python.start(python_path: @python_dir)
    Map.put(opts, :py, py)
  end

  def call(%{data: data}, %{py: py}) do
    {"ok", result} = Python.call(py, append(data, "Hello from Python"), from_file: @main_file)
    %{data: result}
  end
end
