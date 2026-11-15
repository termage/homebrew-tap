# Rendered from grofe's packaging/homebrew/grofe.rb.tmpl by packaging/render.sh.
class Grofe < Formula
  desc "Terminal multiplexer for people who like tmux"
  homepage "https://termage.github.io/grofe/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.2.0/grofe-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "046bade1728638c2c56997902b4249e6fc3325a481f385d96b26e9e623314821"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.2.0/grofe-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f6ac319c88e4dfb90381d8b4ba90f67dbd2d9333666f16784959215db08faa7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.2.0/grofe-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bcd2efe7a3fd4312d2bab5bf30963373ef8acf5f3b98d5e39fbdd76ae8f0a011"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.2.0/grofe-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3f871589722ef45ca9f5b9aec3167ccd0dee69f60003a71101defa23bebffd4c"
    end
  end

  def install
    bin.install "grofe"
  end

  test do
    assert_match "grofe #{version}", shell_output("#{bin}/grofe -V")
  end
end
