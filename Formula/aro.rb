class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.1.0-beta.2/aro-macos-arm64.tar.gz"
  sha256 "55fe11fbadfe69c06d9c4c141f5e554b28de95e85db438f4c2cca2e9a11c6f55"
  version "0.1.0-beta.2"
  license "MIT"

  # Only support macOS for now (ARM64 binary)
  depends_on :macos
  depends_on arch: :arm64

  # LLVM 20 is required for native compilation (aro build)
  depends_on "llvm@20"

  def install
    bin.install "aro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aro --version")
  end
end
