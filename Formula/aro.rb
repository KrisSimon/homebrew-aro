class Aro < Formula
  desc "ARO programming language - Natural language DSL for business logic"
  homepage "https://github.com/KrisSimon/aro"
  url "https://github.com/KrisSimon/aro/releases/download/0.1.0-alpha.2/aro-macos-arm64.tar.gz"
  sha256 "08a8a48678061796bbee6fbcdaef1bf470afc613cb481a53e66debc8447bee98"
  version "0.1.0-alpha.2"
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
