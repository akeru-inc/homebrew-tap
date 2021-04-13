class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.4.6.1.zip"
  sha256 "699355770c8d53fd391abe49021e999e3a8f9a0a12143a9e9895a33b5652bf52"

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.4.6.1"
    sha256 cellar: :any_skip_relocation, mojave:   "c2cf54ef129511e7fa4d9995524fbda7ce43123d1e694fc164ab9a49d9851a70"
    sha256 cellar: :any_skip_relocation, catalina: "c2cf54ef129511e7fa4d9995524fbda7ce43123d1e694fc164ab9a49d9851a70"
    sha256 cellar: :any_skip_relocation, big_sur:  "c2cf54ef129511e7fa4d9995524fbda7ce43123d1e694fc164ab9a49d9851a70"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "c2cf54ef129511e7fa4d9995524fbda7ce43123d1e694fc164ab9a49d9851a70"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
