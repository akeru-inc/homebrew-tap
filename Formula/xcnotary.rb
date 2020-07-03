class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.4.2.zip"
  sha256 "1c094c6ea3ff290f200124db859f6a4737e905152d06a3b4fa9cf65cdfc09ac4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.4.2"
    cellar :any_skip_relocation
    sha256 "ef568ea2c0d4a5d38baed245e31f8b3a8d6363c88ddccf2ee8608a220ac34e86" => :mojave
    sha256 "ef568ea2c0d4a5d38baed245e31f8b3a8d6363c88ddccf2ee8608a220ac34e86" => :catalina
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
