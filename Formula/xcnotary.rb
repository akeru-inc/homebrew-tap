class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.3.1.zip"
  sha256 "b8cd7133e729c31774d9acaf38bd545c098cf7f9d34492a64c999ac7ef7771a3"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.3.1"
    cellar :any_skip_relocation
    sha256 "550883c184aa211ea3352eb427495b6252105e34117e39f6bab6d71ece2d1188" => :catalina
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
