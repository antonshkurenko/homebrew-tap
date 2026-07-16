class Differ < Formula
  desc "Track what you've already reviewed in diffs"
  homepage "https://github.com/antonshkurenko/differ"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/antonshkurenko/differ/releases/download/v0.2.0/differ-macos-arm64"
      sha256 "54480f66b7fa0d5f246e3bd76e7e09010b09b57d59b8c531315c9d4fc6c04c8e"
    else
      url "https://github.com/antonshkurenko/differ/releases/download/v0.2.0/differ-macos-x64"
      sha256 "374937fe4acc8d07b2bd8a5d18b9ac2808d1fb64928a0cc762beab6f26e50a24"
    end
  end

  def install
    bin.install Dir["differ-*"].first => "differ"
  end

  test do
    assert_predicate bin/"differ", :executable?
  end
end
