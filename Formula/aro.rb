class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/KrisSimon/aro"
  url "https://github.com/KrisSimon/aro/releases/download/0.1.0-alpha.12/aro-macos-arm64.tar.gz"
  sha256 "5aff977a42f82e509f201b376e4fa25bea5d285f7122f687a822a7b83994f217"
  version "0.1.0-alpha.12"
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
