class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.4.8.zip"
  sha256 "8a40fd74798a45e42b9b2e66c6c57037e1eba1abf3546c1713cf80b104618f7f"

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.4.8"
    sha256 cellar: :any_skip_relocation, mojave:   "6cc07c954ee40be449dda56264bab084e27b118c03ae67df0a846d7b1cda2072"
    sha256 cellar: :any_skip_relocation, catalina: "6cc07c954ee40be449dda56264bab084e27b118c03ae67df0a846d7b1cda2072"
    sha256 cellar: :any_skip_relocation, big_sur:  "6cc07c954ee40be449dda56264bab084e27b118c03ae67df0a846d7b1cda2072"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "6cc07c954ee40be449dda56264bab084e27b118c03ae67df0a846d7b1cda2072"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
