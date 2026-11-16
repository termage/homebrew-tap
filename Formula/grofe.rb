# Rendered from grofe's packaging/homebrew/grofe.rb.tmpl by packaging/render.sh.
class Grofe < Formula
  desc "Terminal multiplexer for people who like tmux"
  homepage "https://termage.github.io/grofe/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.3.1/grofe-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "06b05d25dc758b1959624f3b4fd5b0fc1bcbf2baeb21eeb882aff398d7661c9b"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.3.1/grofe-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "109f077e9cccf896179bfa7446311e3375dd5d611acaea10dee2bfc0e7f0ad07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.3.1/grofe-v0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b243c135e4ce118941c6d459c75060a1522e48c7f2ec547fde4705ed04f666b2"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.3.1/grofe-v0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f71712b5aa3f2ad004ef53aead119406529550975b5187acb08cde5cb97cf6ef"
    end
  end

  def install
    bin.install "grofe"
  end

  test do
    assert_match "grofe #{version}", shell_output("#{bin}/grofe -V")
  end
end
