class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.4.9.zip"
  sha256 "f7ac15f3a281e0becabb2d245db48747903f743f4a5f14fe2bf0f7fca8ff592a"

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.4.9"
    sha256 cellar: :any_skip_relocation, catalina:   "54b354274cc85469692ec4c19447e08191383aff0b032bc8ca86bd4584be9b79"
    sha256 cellar: :any_skip_relocation, big_sur: "54b354274cc85469692ec4c19447e08191383aff0b032bc8ca86bd4584be9b79"
    sha256 cellar: :any_skip_relocation, monterey:  "54b354274cc85469692ec4c19447e08191383aff0b032bc8ca86bd4584be9b79"
    sha256 cellar: :any_skip_relocation, arm64_monterey:  "54b354274cc85469692ec4c19447e08191383aff0b032bc8ca86bd4584be9b79"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
