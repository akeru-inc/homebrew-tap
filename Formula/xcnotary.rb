class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.4.7.zip"
  sha256 "96842db34b1eb8ee6862e16408d27d7fabe5b81cf244795ab5d6e4d03ee90e21"

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.4.7"
    sha256 cellar: :any_skip_relocation, mojave:   "c6e4444b04388abfec26aa4d9ceba99e65626d7577491533f0bf1a8a705f4a23"
    sha256 cellar: :any_skip_relocation, catalina: "c6e4444b04388abfec26aa4d9ceba99e65626d7577491533f0bf1a8a705f4a23"
    sha256 cellar: :any_skip_relocation, big_sur:  "c6e4444b04388abfec26aa4d9ceba99e65626d7577491533f0bf1a8a705f4a23"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "c6e4444b04388abfec26aa4d9ceba99e65626d7577491533f0bf1a8a705f4a23"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
