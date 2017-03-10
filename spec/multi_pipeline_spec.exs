defmodule MultiPipelineSpec do
  use ESpec

  let :pipeline, do: MultiPipeline.start()

  it "returns hello" do
    result = MultiPipeline.call(pipeline(), %MultiPipeline{data: nil})
    expect(result.data).to eq("hello")
  end
end
