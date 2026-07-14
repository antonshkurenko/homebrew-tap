class Differ < Formula
  desc "Track what you've already reviewed in diffs"
  homepage "https://github.com/antonshkurenko/differ"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antonshkurenko/differ/releases/download/v0.1.0/differ-macos-arm64"
      sha256 "cfdf1190a3f09c227a9d1686f1e6c4ceec442d3fc411b0e19a0da05fb8b6c243"
    else
      url "https://github.com/antonshkurenko/differ/releases/download/v0.1.0/differ-macos-x64"
      sha256 "695e83ced9a0bb0d8e7938d87939357a5106685c1f3b78992fe1815ab87466d9"
    end
  end

  def install
    bin.install Dir["differ-*"].first => "differ"
  end

  test do
    assert_predicate bin/"differ", :executable?
  end
end
