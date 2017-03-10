defmodule MultiPipeline do
  use Flowex.Pipeline

  defstruct data: nil

  pipe :first

  def first(struct, _opts) do
    %{struct | data: "hello"}
  end

end
