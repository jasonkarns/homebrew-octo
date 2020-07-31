# This file was generated by GoReleaser. DO NOT EDIT.
class Octo < Formula
  desc "cli client for GitHub"
  homepage "https://github.com/octo-cli/octo-cli"
  version "0.22.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/octo-cli/octo-cli/releases/download/v0.22.0/octo-cli_0.22.0_Darwin_x86_64.tar.gz"
    sha256 "3481d8cc09b8edca50e339d4c12af9f5d71fa9912eeedf5adaec5211c319d066"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/octo-cli/octo-cli/releases/download/v0.22.0/octo-cli_0.22.0_Linux_x86_64.tar.gz"
      sha256 "34ff80d3855f2356e4f432eb54e96b9e91b7a2381b67a575309b2b79081829f4"
    end
  end

  def install
    bin.install "octo"
  end
end
