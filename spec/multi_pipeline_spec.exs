defmodule MultiPipelineSpec do
  use ESpec

  let :pipeline, do: MultiPipeline.start()

  it "returns hello" do
    result = MultiPipeline.call(pipeline(), %MultiPipeline{})
    greetings = "Hello from Ruby, Hello from Python, Hello from shell"
    expect(result.data).to eq(greetings)
  end
end
