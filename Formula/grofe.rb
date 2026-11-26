# Rendered from grofe's packaging/homebrew/grofe.rb.tmpl by packaging/render.sh.
class Grofe < Formula
  desc "Terminal multiplexer for people who like tmux"
  homepage "https://termage.github.io/grofe/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.6.0/grofe-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "5e4a856e7fd5e58a9bd6a6629133cfd7d03d951f1d383d7f31842e2b4af11d62"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.6.0/grofe-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "a389cc7418d8e62e338a8890a8b77b8ec699312d916402b9be9336ba7dc9cdec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.6.0/grofe-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7436f302a4308b2ca714e99beb1757a1824887ea75b23c186f34b89b09cfb790"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.6.0/grofe-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2ea46b5c5c15429d8d7852b00ce451050e8dc3b944a8d70d01fcc4d993e7c9fd"
    end
  end

  def install
    bin.install "grofe"
  end

  test do
    assert_match "grofe #{version}", shell_output("#{bin}/grofe -V")
  end
end
