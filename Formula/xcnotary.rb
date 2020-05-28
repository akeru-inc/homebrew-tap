class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.4.2.zip"
  sha256 "578de8d1f44b6a09a497a1e52b2b4ad8299af9ef78abefcc01520ef51264eeaa"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.4.2"
    cellar :any_skip_relocation
    sha256 "ef1698f1f667a81a4ca5843f0b1d5d02f9f42efb2f766cc3786dec9cedd7487c" => :mojave_or_later
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
