class Differ < Formula
  desc "Track what you've already reviewed in diffs"
  homepage "https://github.com/antonshkurenko/differ"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antonshkurenko/differ/releases/download/v0.1.0/differ-macos-arm64"
      sha256 "5a8dd5bb53dd4126f3a29da4a9cdeeb39bfffcc73065c1388a27d45c59f7054b"
    else
      url "https://github.com/antonshkurenko/differ/releases/download/v0.1.0/differ-macos-x64"
      sha256 "f79fe34ea88e5d66d548a3c465acbc45f03c96c4805a0fcabbc008501463917c"
    end
  end

  def install
    bin.install Dir["differ-*"].first => "differ"
  end

  test do
    assert_predicate bin/"differ", :executable?
  end
end
