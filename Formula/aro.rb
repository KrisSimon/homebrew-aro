class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/arolang/aro"
  url "https://github.com/arolang/aro/releases/download/0.1.0-beta.5/aro-macos-arm64.tar.gz"
  sha256 "d573bf2b59091aa74c0de7739d1dbadb0a77236355ccc92c87af7a82e599656b"
  version "0.1.0-beta.5"
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
