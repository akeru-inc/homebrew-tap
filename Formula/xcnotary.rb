class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.2.0.zip"
  sha256 "0a4c8d96b125dafb738498e8b718c3261bec1dacab9b614994b41de4812a1ef3"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.2.0"
    cellar :any_skip_relocation
    sha256 "0fae5324dd1785f89c7fad13f9a326e0be673a3e8563179aa6c69a778c8d4716" => :catalina
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
