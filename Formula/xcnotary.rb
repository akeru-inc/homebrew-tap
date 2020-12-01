class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.4.3.zip"
  sha256 "511831e551e5933d3cd5e92a21ff998a7957b881dfc7273019f3a4ddf174f79a"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.4.3"
    cellar :any_skip_relocation
    sha256 "18c60db4512fd56cb0dc0221559945441ee55294d457b159676d5d2e178c7a0f" => :mojave
    sha256 "18c60db4512fd56cb0dc0221559945441ee55294d457b159676d5d2e178c7a0f" => :catalina
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
