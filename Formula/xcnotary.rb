class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.3.0.zip"
  sha256 "6d481eb35384dbcfaedc6ed4728de80270c3cc6e6b56776f3ca9eb15fe30fbfc"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.3.0"
    cellar :any_skip_relocation
    sha256 "0bc97ec8b51b245baa4fda6e3058b3ec30f59c3f88a0cec7985df870dad569f2" => :catalina
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
