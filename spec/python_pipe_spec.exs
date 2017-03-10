defmodule PythonPipeSpec do
  use ESpec

  let :opts, do: described_module().init

  it "has ruby process pid in opts" do
    expect(opts().py).to be_pid()
  end

  it "pushes to data when .call" do
    result = described_module().call(%{data: []}, opts())
    expect(result.data).to eq(["Hello from Python"])
  end
end
