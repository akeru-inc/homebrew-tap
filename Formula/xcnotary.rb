class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.4.0.zip"
  sha256 "48714998eb4dc14f973eaf81c5b390bcc8018ab9d86f963f10e829c380a9d023"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.4.0"
    cellar :any_skip_relocation
    sha256 "965490575935d345af4e8cf3401fda2b15c03edd3a6ef7ed5335987a90fe597b" => :catalina
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
