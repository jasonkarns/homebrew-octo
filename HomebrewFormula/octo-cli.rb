# Classname should match the name of the installed package.
class OctoCli < Formula
  desc "Octo-cli is a command line client for GitHub's REST API."
  homepage "https://github.com/octo-cli/octo-cli"

  # Source code archive. Each tagged release will have one
  url "https://github.com/octo-cli/octo-cli/archive/0.0.0-20181019T143313Z.zip"
  sha256 "4bac452582f98672ed8ce530dc744c44beeef441b52b69741e44f1ec7945156c"
  head "https://github.com/octo-cli/octo-cli"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    bin_path = buildpath/"src/github.com/octo-cli/octo-cli"
    # Copy all files from their current location (GOPATH root)
    # to $GOPATH/src/github.com/octo-cli/octo-cli
    bin_path.install Dir["*"]
    cd bin_path do
      # Install the compiled binary into Homebrew's `bin` - a pre-existing
      # global variable
      system "go", "build", "-o", bin/"octo-cli", "."
      # go build -o bin/octo -ldflags "-X main.version=${VERSION:-development}"
    end
  end

  # Homebrew requires tests.
  test do
    # "2>&1" redirects standard error to stdout. The "2" at the end means "the
    # exit code should be 2".
    assert_match "0.0.0-20181019T143313Z", shell_output("#{bin}/octo-cli --version 2>&1", 2)
  end
end
