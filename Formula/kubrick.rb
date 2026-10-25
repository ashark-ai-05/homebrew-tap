class Kubrick < Formula
  desc "Fast, read-only-by-default Kubernetes cluster explorer for the terminal"
  homepage "https://github.com/ashark-ai-05/kubrick"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/ashark-ai-05/kubrick/releases/download/v0.1.1/kubrick-aarch64-apple-darwin.tar.gz"
      sha256 "83996a70b144fd29ef9915c5885c4aba9538395a123b974fc53efbbbf0928955"
    end
    on_intel do
      url "https://github.com/ashark-ai-05/kubrick/releases/download/v0.1.1/kubrick-x86_64-apple-darwin.tar.gz"
      sha256 "3b5749ffcbd097171d0346fc12fbc243f2dc5875cd7cc114ab591b16bd00c559"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ashark-ai-05/kubrick/releases/download/v0.1.1/kubrick-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0bdc4ac8bb58ba9b5c00b9876a8c1c5a161266d7f6fad6ac9951d0d2e5c23f73"
    end
    on_intel do
      url "https://github.com/ashark-ai-05/kubrick/releases/download/v0.1.1/kubrick-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dea69d43edc71bb20eaf0d4bf74fdfd5131291cd8c8e2a65801af2c32d02db41"
    end
  end

  def install
    bin.install "kubrick"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubrick --version")
  end
end
