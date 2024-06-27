defmodule IssueFetcher.MixProject do
  use Mix.Project

  def project do
    [
      app: :issue_fetcher,
      escript: escript_config(),
      version: "0.1.0",
      elixir: "~> 1.16",
      name: "Issue Fetcher",
      source_url: "https://github.com/filip-rybczynski/issue-fetcher",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 2.2"},
      {:poison, "~> 6.0"},
      {:ex_doc, "~> 0.34.1"},
      {:earmark, "~> 1.4"}
    ]
  end

  defp escript_config do
    [
      main_module: IssueFetcher.CLI
    ]
  end
end
