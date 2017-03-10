defmodule ElixirPipeSpec do
  use ESpec

  it "joins to data when .call" do
    result = described_module().call(%{data: ["hi", "hello"]}, %{})
    expect(result.data).to eq("hi, hello")
  end
end
