class PhpLsp < Formula
  desc "PHP Language Server Protocol implementation"
  homepage "https://github.com/jorgsowa/php-lsp"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "4351b93021c8ec548b0aa3e32ef2fcf1d8224762af3ba495c712c92e559bb82c"
    end
    on_intel do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "3753a738463a686ba708de067d3c4abb4b462c6fb21a14f61abc1d59a214a95b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0117d462cc8380d369b866edfc778773b7fb2b3133997292f5ba280e5f7e6a20"
    end
  end

  def install
    bin.install "php-lsp"
  end

  test do
    assert_predicate bin/"php-lsp", :executable?
  end
end
