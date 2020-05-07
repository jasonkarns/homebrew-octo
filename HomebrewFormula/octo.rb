# This file was generated by GoReleaser. DO NOT EDIT.
class Octo < Formula
  desc "cli client for GitHub"
  homepage "https://github.com/octo-cli/octo-cli"
  version "0.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/octo-cli/octo-cli/releases/download/v0.3.1/octo-cli_0.3.1_Darwin_x86_64.tar.gz"
    sha256 "f9fbe03176b17ecdb3e48da817e1267cc61ec9d1471ffae595a8127eb2e17d9b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/octo-cli/octo-cli/releases/download/v0.3.1/octo-cli_0.3.1_Linux_x86_64.tar.gz"
      sha256 "675c34d346b5568096e572d102c06e7ba0ac3dba68740c56e27e9cb44718093e"
    end
  end

  def install
    bin.install "octo"
  end
end
