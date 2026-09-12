class PhpLsp < Formula
  desc "PHP Language Server Protocol implementation"
  homepage "https://github.com/jorgsowa/php-lsp"
  version "0.25.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "63f9fc5e87b3e1c7a860fa577b01b3d90a8c56afe27d3f5a89aeb20d0c33200b"
    end
    on_intel do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "ab69c8feee31de16f20701ce65375a082954f04e38e2ef1ec539ef96d2a9341c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4817e7507a963a642e125b870e935606595dba4e3f3117dfa80b7f385720247"
    end
  end

  def install
    bin.install "php-lsp"
  end

  test do
    assert_predicate bin/"php-lsp", :executable?
  end
end
