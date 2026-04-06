class PhpLsp < Formula
  desc "PHP Language Server Protocol implementation"
  homepage "https://github.com/jorgsowa/php-lsp"
  version "0.1.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "cfb55e86bfe77ca6caee568f5c5281e9366430bf6ff4318c1177bbb715e9519f"
    end
    on_intel do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "5b096ed2740498a9b5f36181d89371d78c04dff8f5c0b46e5c1d15c50f9191de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b854c263b128062335419ea74d28adea7049d76d6c67f8f0d1c2c35d88c16868"
    end
  end

  def install
    bin.install "php-lsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/php-lsp --version")
  end
end
