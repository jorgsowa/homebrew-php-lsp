class PhpLsp < Formula
  desc "PHP Language Server Protocol implementation"
  homepage "https://github.com/jorgsowa/php-lsp"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "845ce103fdc8a1ad704c4c0942ed0ddce9df9f78f71312373591a56706058dec"
    end
    on_intel do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "a183308b67b1cf0937bd6aaadcaddfbc4254be03c4cf9d2460e7ad34c36b3b91"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e5c042e671bb917c7197a690c2a27301169031e87c88d983f49a18556b5d469"
    end
  end

  def install
    bin.install "php-lsp"
  end

  test do
    assert_predicate bin/"php-lsp", :executable?
  end
end
