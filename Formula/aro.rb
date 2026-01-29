class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/v0.1.0-beta.4/aro-macos-arm64.tar.gz"
  sha256 "6fee81b309c46826ddcebc5bbad4ffa4909b52a406e3d5f2c031aa45a056a90f"
  version "0.1.0-beta.4"
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
