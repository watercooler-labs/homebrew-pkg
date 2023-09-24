class TogglCli < Formula
  desc "Unofficial CLI for Toggl"
  homepage "https://github.com/watercooler-labs/toggl-cli"
  url "https://github.com/watercooler-labs/toggl-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "81515d479495d6980edbe858c7f4f334e89b725ca0b84021cc367485d6a801a3"
  license "MIT"
  head "https://github.com/watercooler-labs/toggl-cli.git", branch: "main"

  bottle do
    root_url "https://github.com/watercooler-labs/homebrew-pkg/releases/download/toggl-cli-0.3.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, ventura: "44332b62fb96a4aee2c5144229c091a7d3c5f55215352b6676342869a5121819"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "-vv", *std_cargo_args
  end

  test do
    system "#{bin}/toggl", "--help"
  end
end
