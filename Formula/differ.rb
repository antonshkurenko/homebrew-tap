class Differ < Formula
  desc "Track what you've already reviewed in diffs"
  homepage "https://github.com/antonshkurenko/differ"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antonshkurenko/differ/releases/download/v0.1.1/differ-macos-arm64"
      sha256 "347dfd9d31fa15c6f96b32cabc2bb96532f12c87b156d8e3d975a3583bd7e674"
    else
      url "https://github.com/antonshkurenko/differ/releases/download/v0.1.1/differ-macos-x64"
      sha256 "445ee5cd12f27eb23f6ea3dd44a2b6f1ccd9828b582d83dc907c4ab6d3f7cb2b"
    end
  end

  def install
    bin.install Dir["differ-*"].first => "differ"
  end

  test do
    assert_predicate bin/"differ", :executable?
  end
end
