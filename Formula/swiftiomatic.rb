class Swiftiomatic < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/archive/refs/tags/v0.11.0.tar.gz"
  version "0.11.0"
  sha256 "a547430636bfee21190884fdf3a0cf4d8e73bf5a72581df22aaad88f6fbf7c44"
  license "MIT"

  depends_on :macos => :sequoia
  depends_on xcode: ["16.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/swiftiomatic"
  end

  test do
    assert_match "swiftiomatic", shell_output("#{bin}/swiftiomatic --help")
  end
end
