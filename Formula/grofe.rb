# Rendered from grofe's packaging/homebrew/grofe.rb.tmpl by packaging/render.sh.
class Grofe < Formula
  desc "Terminal multiplexer for people who like tmux"
  homepage "https://termage.github.io/grofe/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.5.0/grofe-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "2b08e7a45daf07af05773e3f9daf54ade4028e4535f67fe30f1dbd63d5f518b9"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.5.0/grofe-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "78e699847f31d06579d53983b4a0e3f3e27fa216632552f7731f08297f8e3116"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.5.0/grofe-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fa8446d7acf617e5ad8bd5f9563bf366ab533eeff6a9ab66d90992e7398b1115"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.5.0/grofe-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "585f9ce7ac2066437edc7359bd104fde3b6a0f9153ea5825130a7ca7a252407d"
    end
  end

  def install
    bin.install "grofe"
  end

  test do
    assert_match "grofe #{version}", shell_output("#{bin}/grofe -V")
  end
end
