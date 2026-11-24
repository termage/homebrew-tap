# Rendered from grofe's packaging/homebrew/grofe.rb.tmpl by packaging/render.sh.
class Grofe < Formula
  desc "Terminal multiplexer for people who like tmux"
  homepage "https://termage.github.io/grofe/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.5.2/grofe-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "bb42feeb00e6945b0bd05222198b6eb3ae44b66c8ba93789a771a259f7481d1a"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.5.2/grofe-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "66b859717484b212b573c006c9b34d1fd184427ac1e6cc0436f530c43397cc73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.5.2/grofe-v0.5.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e3d3dbb5c51ad496ef71833ccd1fe4ccc5cb657ede09ed7f7166a3111437587"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.5.2/grofe-v0.5.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "52d62c521d35b983b11bc0a9d4511e9e0cfb99373967e25876b6463a2b464580"
    end
  end

  def install
    bin.install "grofe"
  end

  test do
    assert_match "grofe #{version}", shell_output("#{bin}/grofe -V")
  end
end
