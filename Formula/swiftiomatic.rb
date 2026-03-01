class Swiftiomatic < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.11.0/swiftiomatic-v0.11.0-arm64.tar.gz"
  version "0.11.0"
  sha256 "4dc70cd9f0d122d2f596257023164bce5b32bf4e4e32fea6b93dbd340fbe0205"
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
