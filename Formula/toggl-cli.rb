class TogglCli < Formula
  desc "Unofficial CLI for Toggl"
  homepage "https://github.com/watercooler-labs/toggl-cli"
  url "https://github.com/watercooler-labs/toggl-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "81515d479495d6980edbe858c7f4f334e89b725ca0b84021cc367485d6a801a3"
  license "MIT"
  head "https://github.com/watercooler-labs/toggl-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "-vv", *std_cargo_args
  end

  test do
    system "#{bin}/toggl", "--help"
  end
end
