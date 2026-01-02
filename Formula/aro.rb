class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/KrisSimon/aro"
  url "https://github.com/KrisSimon/aro/releases/download/0.1.0-alpha.13/aro-macos-arm64.tar.gz"
  sha256 "1614c9b1e3f72d0ed3ba34ca75990dcc8b814cb213b61e3a0a9ec6b78786029a"
  version "0.1.0-alpha.13"
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
