defmodule ShellPipeSpec do
  use ESpec

  it "pushes to data when .call" do
    result = described_module().call(%{data: []}, %{})
    expect(result.data).to eq(["Hello from shell"])
  end
end
