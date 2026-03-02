class Swiftiomatic < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.15.5/swiftiomatic-v0.15.5-arm64.tar.gz"
  version "0.15.5"
  sha256 "a454f76443ccbc48d891859743968d759ba459cee7a87ea19a0db3fe084a10ce"
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
