class Swiftiomatic < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.15.3/swiftiomatic-v0.15.3-arm64.tar.gz"
  version "0.15.3"
  sha256 "cf1be5aa82650bf5994c5a2f84ee745a4de2836ecccf5ec1b59e32606d1ed2a2"
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
