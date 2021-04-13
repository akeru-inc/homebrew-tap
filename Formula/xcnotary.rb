class Xcnotary < Formula
  desc "macOS app notarization helper"
  homepage "https://github.com/akeru-inc/xcnotary"
  url "https://github.com/akeru-inc/xcnotary/archive/v0.4.6.zip"
  sha256 "fc1908a43f21250611cd36b3bdcfb96996feb7c6d1fcef492de25fa40ddeca9e"

  bottle do
    root_url "https://github.com/akeru-inc/xcnotary/releases/download/v0.4.6"
    sha256 cellar: :any_skip_relocation, mojave:   "d798b49c6cec0a6ea2528dc9dcf3aa41fd5eabe0ecdef807008667d010ab1368"
    sha256 cellar: :any_skip_relocation, catalina: "d798b49c6cec0a6ea2528dc9dcf3aa41fd5eabe0ecdef807008667d010ab1368"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/xcnotary", "--help"
  end
end
