defmodule Opengraph.Mixfile do
  use Mix.Project

  def project do
    [
      app: :opengraph,
      version: "0.2.0",
      elixir: "~> 1.9",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: "A module for parsing OpenGraph data.",
      package: package(),
   ]
  end

  def package do
    [
      maintainers: ["Alexander Akhmetov"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/alexander-akhmetov/opengraph"}
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:httpoison, "~> 1.5.1"},
      {:floki, "~> 0.22.0"},
      {:mock, "~> 0.3.3", only: :test},
      {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end
end
