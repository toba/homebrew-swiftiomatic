class Swiftiomatic < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.16.0/swiftiomatic-v0.16.0-arm64.tar.gz"
  version "0.16.0"
  sha256 "2a967a28e4a71d0fb49176865e9abc28282525a035a4e2ad28766a885012457c"
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
