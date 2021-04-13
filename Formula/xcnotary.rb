class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.4.6.zip"
  sha256 "c19fb7fe1d0c02f1e04d2031ba599133d6c6428a7dcda5959e38a4da2275be3d"

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.4.6"
    sha256 cellar: :any_skip_relocation, mojave:   "107079648e9a941c3d816acb64b84f7e114c8d2cfa87b627daf7bceaf99b6fa9"
    sha256 cellar: :any_skip_relocation, catalina: "107079648e9a941c3d816acb64b84f7e114c8d2cfa87b627daf7bceaf99b6fa9"
    sha256 cellar: :any_skip_relocation, big_sur:  "107079648e9a941c3d816acb64b84f7e114c8d2cfa87b627daf7bceaf99b6fa9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
