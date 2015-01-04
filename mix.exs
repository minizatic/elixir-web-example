defmodule Plug_example.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_example,
     version: "0.0.1",
     deps: deps]
  end

  def application do
    [applications: [:cowboy, :plug, :eex]]
  end

  def deps do
    [{:cowboy, "~> 1.0.0"},
     {:plug, "~> 0.9.0"}]
  end

end
