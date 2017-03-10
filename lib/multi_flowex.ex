defmodule MultiFlowex do
  use Application

  def start(_type, _opts) do
    pipeline = MultiPipeline.start
    Application.put_env(:multi_flowex, :pipeline, pipeline)
    {:ok, pipeline.sup_pid}
  end
end
