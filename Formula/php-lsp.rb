class PhpLsp < Formula
  desc "PHP Language Server Protocol implementation"
  homepage "https://github.com/jorgsowa/php-lsp"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "aa8479855a81f64e37da43026e1969113247fd18620433bf0b2140e8d5d947cb"
    end
    on_intel do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "04dd4cedf684bafb0006200a52fd8932d89d641fc41e970fb22387dff21868a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "311fddc52276d3d77d7821a3cea65568f30b70db1b1ba232d860bb3af8d6954c"
    end
  end

  def install
    bin.install "php-lsp"
  end

  test do
    assert_predicate bin/"php-lsp", :executable?
  end
end
