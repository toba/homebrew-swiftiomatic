class Swiftiomatic < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.15.4/swiftiomatic-v0.15.4-arm64.tar.gz"
  version "0.15.4"
  sha256 "d549b4e8aec3b0c891d33e6327d2f62594b75c6f483d7d11bd03f912faae63c2"
  license "MIT"

  depends_on :macos => :sequoia
  depends_on arch: :arm64

  def install
    bin.install "swiftiomatic"
  end

  test do
    assert_match "swiftiomatic", shell_output("#{bin}/swiftiomatic --help")
  end
end
