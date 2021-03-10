class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.4.4.zip"
  sha256 "d37cfe7cb468f8b0a1fa5555369d12a60bd7842d18e22655036c5f3a0addbe78"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.4.4"
    cellar :any_skip_relocation
    sha256 "66d97eaa4e326d908fdfe05f0afdedae110f54a4577bb31e38262b9fccdd8ea7" => :mojave
    sha256 "66d97eaa4e326d908fdfe05f0afdedae110f54a4577bb31e38262b9fccdd8ea7" => :catalina
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
