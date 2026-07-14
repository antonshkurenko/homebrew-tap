class Differ < Formula
  desc "Track what you've already reviewed in diffs"
  homepage "https://github.com/antonshkurenko/differ"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antonshkurenko/differ/releases/download/v0.1.2/differ-macos-arm64"
      sha256 "6cacda351b1266ca6584a04a058d4cce673f4b5893f39051bfd31da8656b7a02"
    else
      url "https://github.com/antonshkurenko/differ/releases/download/v0.1.2/differ-macos-x64"
      sha256 "a39b64533a5540c8bd343b52b51394f57a0fa8c0c4f256f3eef3d7eb0dd7610e"
    end
  end

  def install
    bin.install Dir["differ-*"].first => "differ"
  end

  test do
    assert_predicate bin/"differ", :executable?
  end
end
