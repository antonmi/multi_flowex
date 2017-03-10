defmodule MultiFlowex.Mixfile do
  use Mix.Project

  def project do
    [app: :multi_flowex,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     preferred_cli_env: [espec: :test],
     deps: deps()]
  end

  def application do
    [mod: {MultiFlowex, []}]
  end

  defp deps do
    [
      {:flowex, path: "/Users/antonmi/elixir/flowex"},
      {:espec, "1.3.0", only: :test},

      {:export, "~> 0.1.0"},
      {:erlport, "0.9.8", manager: :make},
      {:porcelain, "2.0.3"}
    ]
  end
end
