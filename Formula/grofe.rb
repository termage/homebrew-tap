# Rendered from grofe's packaging/homebrew/grofe.rb.tmpl by packaging/render.sh.
class Grofe < Formula
  desc "Terminal multiplexer for people who like tmux"
  homepage "https://termage.github.io/grofe/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.5.1/grofe-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "3f829639a28fcd531d852e518a01bdbb6a2acb263637d6ef61720f99a6bb718f"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.5.1/grofe-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "678001121befe8c993e22a2ce7fe9b5fa9ad5ed18ee4b587ebab70533f77b98a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.5.1/grofe-v0.5.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9a524ae132709e800943df0661a6c351f71bd7affce525a1b83f27b39969d49"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.5.1/grofe-v0.5.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "47227d9a8994d42f815ae9ea799e01a4e5dd3578b9935ee283a7db85bc755597"
    end
  end

  def install
    bin.install "grofe"
  end

  test do
    assert_match "grofe #{version}", shell_output("#{bin}/grofe -V")
  end
end
