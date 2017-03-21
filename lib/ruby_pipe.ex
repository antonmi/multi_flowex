defmodule RubyPipe do
  @ruby_dir Application.app_dir(:multi_flowex, "priv/ruby")
  @main_file "main"

  use Export.Ruby

  def init(opts \\ %{}) do
    {:ok, ruby} = Ruby.start(ruby_lib: @ruby_dir)
    Map.put(opts, :ruby, ruby)
  end

  def call(struct, opts) do
    {:ok, result} = Ruby.call(opts.ruby,
                              push(struct.data, "Hello from Ruby"),
                              from_file: @main_file)
    %{struct | data: result}
  end
end
