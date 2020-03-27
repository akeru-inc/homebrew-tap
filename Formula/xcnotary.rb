class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.1.0.zip"
  sha256 "c781d362ce8d4eb74da5b57eefe32668575f02c797f4d818766c496ccda7a56f"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.1.0"
    cellar :any_skip_relocation
    sha256 "2ef8ca0fb0f8913f0dd4db0c5a784b0ab79d20a5c4f82a1b88e756c0b1d3b2db" => :catalina
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
