class Kubrick < Formula
  desc "Fast, read-only-by-default Kubernetes cluster explorer for the terminal"
  homepage "https://github.com/ashark-ai-05/kubrick"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/ashark-ai-05/kubrick/releases/download/v0.1.0/kubrick-aarch64-apple-darwin.tar.gz"
      sha256 "a37925c721a05f40104dcc18952300977efbc55d5be5d8eecbb995d7fcd61313"
    end
    on_intel do
      url "https://github.com/ashark-ai-05/kubrick/releases/download/v0.1.0/kubrick-x86_64-apple-darwin.tar.gz"
      sha256 "fa9a551b68127162902d033079419dbd756fdca3f70481a53dbee05f20dd6ea1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ashark-ai-05/kubrick/releases/download/v0.1.0/kubrick-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a42baf04caa99f388a75c9f435f53ae9179385cfe8fd33635a13da1011616e2"
    end
    on_intel do
      url "https://github.com/ashark-ai-05/kubrick/releases/download/v0.1.0/kubrick-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b95f1cdd79671f6164eb0b634e0f7de5ac4a1fd377f15868e0b77363467f9d15"
    end
  end

  def install
    bin.install "kubrick"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubrick --version")
  end
end
