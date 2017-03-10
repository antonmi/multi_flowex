defmodule MultiFlowexSpec do
  use ESpec

  let :pipeline, do: Application.get_env(:multi_flowex, :pipeline)

  it "returns hello" do
    result = MultiPipeline.call(pipeline(), %MultiPipeline{})
    expect(result.data).to eq("Hello from Ruby, Hello from Python, Hello from shell")
  end
end
