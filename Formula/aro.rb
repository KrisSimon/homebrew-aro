class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/KrisSimon/aro"
  url "https://github.com/KrisSimon/aro/releases/download/0.1.0-alpha.1/aro-macos-arm64.tar.gz"
  sha256 "9cbbdcff9163b1b858d6a9f80d9efaa422a3b6da0d000f77f036a9b9559da49a"
  version "0.1.0-alpha.1"
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
