class Eventforge < Formula
  desc "EventForge CLI for forwarding webhooks to localhost"
  homepage "https://event-forge.app"
  url "https://github.com/sinyakinilya/homebrew-eventforge/releases/download/v0.30.3-private.2/eventforge-client-v0.30.3-private.2-darwin-arm64.tar.gz"
  version "0.30.3-private.2"
  sha256 "862797846ab860a2442bdd512199865789ffe568693267047b51158e28add9f9"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "eventforge"
    pkgshare.install "INSTALL.txt", "Go-LICENSE.txt", "Go-PATENTS.txt",
                     "coder-websocket-LICENSE.txt", "google-uuid-LICENSE.txt", "manifest.json"
  end

  test do
    assert_equal "eventforge v0.30.3-private.2 (source 3eb8eeca5712311a672c2508a7903dec38617b7b)",
                 shell_output("#{bin}/eventforge --version").strip
    assert_match "--transport", shell_output("#{bin}/eventforge listen --help")
  end
end
