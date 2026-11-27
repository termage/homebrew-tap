# Rendered from grofe's packaging/homebrew/grofe.rb.tmpl by packaging/render.sh.
class Grofe < Formula
  desc "Terminal multiplexer for people who like tmux"
  homepage "https://termage.github.io/grofe/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.7.0/grofe-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "ed8f072c7bac9d0916c8b6ee94d136f3175418ba49ca5898753bbf8511669ced"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.7.0/grofe-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "23828679ae7115c476f3f3fcd65a5868c8cb0f5d3a77d0b3e177dd03040beb09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.7.0/grofe-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "03c62892ac021eaea6718cda3bd643715dfd135660aeb908a611005778f9f207"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.7.0/grofe-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6ab19e7afda0eaaab78846c9e73e0a7d7ddc7fbe69b17f983b83a01c28ac23c3"
    end
  end

  def install
    bin.install "grofe"
  end

  test do
    assert_match "grofe #{version}", shell_output("#{bin}/grofe -V")
  end
end
