# Rendered from grofe's packaging/homebrew/grofe.rb.tmpl by packaging/render.sh.
class Grofe < Formula
  desc "Terminal multiplexer for people who like tmux"
  homepage "https://termage.github.io/grofe/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.4.0/grofe-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "7bcdd4d424d0ea7063ee35b5707781713be61609a10ebb0f4986474a89ab39f8"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.4.0/grofe-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "fbdb6cdbe61240633f59d3e06a294298e5e4b0577c0daab3960d01ad887c43bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/termage/grofe/releases/download/v0.4.0/grofe-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e91fee4b8bf7dcdc37d01d808c707b42d4ee572fc6db0eb7e85efa7cbaae377"
    end
    on_intel do
      url "https://github.com/termage/grofe/releases/download/v0.4.0/grofe-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f5528783c8b6681bf955e2e58a00c20dc4db948ae493b62ea1095b12054ba053"
    end
  end

  def install
    bin.install "grofe"
  end

  test do
    assert_match "grofe #{version}", shell_output("#{bin}/grofe -V")
  end
end
