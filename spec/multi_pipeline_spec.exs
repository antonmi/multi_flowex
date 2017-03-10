defmodule MultiPipelineSpec do
  use ESpec

  let :pipeline, do: MultiPipeline.start()

  it "returns hello" do
    result = MultiPipeline.call(pipeline(), %MultiPipeline{})
    expect(result.data).to eq("Hello from Ruby, Hello from Python, Hello from shell")
  end
end
