defmodule RubyPipe do
  defstruct [:data]

  @ruby_dir Application.app_dir(:multi_flowex, "priv/ruby")
  @main_file "main"

  use Export.Ruby

  def init(opts \\ %{}) do
    {:ok, ruby} = Ruby.start(ruby_lib: @ruby_dir)
    Map.put(opts, :ruby, ruby)
  end

  def call(%{data: data}, %{ruby: ruby}) do
    {:ok, result} = Ruby.call(ruby, push(data, "Hello from Ruby"), from_file: @main_file)
    %{data: result}
  end
end
