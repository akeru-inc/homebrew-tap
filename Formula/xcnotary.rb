class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.4.2.zip"
  sha256 "a449ac7bfabe95d9a1513ccd57b87b9014959575e0e806293d8ddeb7f4c1d7b7"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.4.2"
    cellar :any_skip_relocation
    sha256 "b0444d964f6ab0a852c26547ffd839419282237a12fe529297becec7c3b974ae" => :mojave
    sha256 "b0444d964f6ab0a852c26547ffd839419282237a12fe529297becec7c3b974ae" => :catalina
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
