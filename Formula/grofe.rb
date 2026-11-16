# Rendered from grofe's packaging/homebrew/grofe.rb.tmpl by packaging/render.sh.
class Grofe < Formula
  desc "Terminal multiplexer for people who like tmux"
  homepage "https://termage.github.io/grofe/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.3.0/grofe-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "be147bfeba2ad7dce28a14ff1091f3a32e925207a558fb8fe95def16669522e0"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.3.0/grofe-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "41470356043035337f66ea0178b1b9aeee35bc740adcbf29c6f40f56e6551b06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.3.0/grofe-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "885d6924820b0b48d3de6a8f8e274c09eb58c33c212f39c8f9c8beaf39a649ef"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.3.0/grofe-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7b9b0bada4aa63f3a5ae381e3d6496bdef18c5a3effce2eb0542dda1048badc7"
    end
  end

  def install
    bin.install "grofe"
  end

  test do
    assert_match "grofe #{version}", shell_output("#{bin}/grofe -V")
  end
end
