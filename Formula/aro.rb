class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.1.0-beta.1/aro-macos-arm64.tar.gz"
  sha256 "6468d50b4b08e5eacb7c01ade9af23f9822003ab5c0f16a2f327d147ba74711b"
  version "0.1.0-beta.1"
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
