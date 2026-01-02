class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/KrisSimon/aro"
  url "https://github.com/KrisSimon/aro/releases/download/0.1.0-alpha.8/aro-macos-arm64.tar.gz"
  sha256 "5ddc8b82b654adad95226b8b0c8ae95e37f2002e6dc52b470235bf6c7d46153d"
  version "0.1.0-alpha.8"
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
