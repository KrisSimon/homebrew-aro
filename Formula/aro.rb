class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/KrisSimon/aro"
  url "https://github.com/KrisSimon/aro/releases/download/0.1.0-alpha.3/aro-macos-arm64.tar.gz"
  sha256 "dc5028590687f6b8d395f2d50c9d102356228b4dacac0c20d3aa2f3c8ed5365a"
  version "0.1.0-alpha.3"
  license "MIT"

  # Only support macOS for now (ARM64 binary)
  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "aro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aro --version")
  end
end
