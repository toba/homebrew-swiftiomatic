class Swiftiomatic < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.17.1/swiftiomatic-v0.17.1-arm64.tar.gz"
  version "0.17.1"
  sha256 "465771e1e8ca9bca30585f626b55374f22c29cc66f5763489ff3e0fc2ea8bec4"
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
