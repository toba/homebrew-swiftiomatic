class Swiftiomatic < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.17.0/swiftiomatic-v0.17.0-arm64.tar.gz"
  version "0.17.0"
  sha256 "18ad3841b417c679e79e711f0d097e7b3c32a478a1ae57c5cfc89523e6ca5ad9"
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
