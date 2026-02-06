class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/v0.1.0-beta.7/aro-macos-arm64.tar.gz"
  sha256 "341ff046e01ad8255c7995714a88fdbef7e467ef2aacc994b2a08f6a3a930902"
  version "0.1.0-beta.7"
  license "MIT"

  # Only support macOS for now (ARM64 binary)
  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "aro"
    lib.install "libARORuntime.a"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aro --version")
  end
end
