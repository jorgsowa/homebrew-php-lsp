class PhpLsp < Formula
  desc "PHP Language Server Protocol implementation"
  homepage "https://github.com/jorgsowa/php-lsp"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "40c903ac4ced842c3f073a70995ff34cea617d6901f9ae3b5ee91a4433dafbb3"
    end
    on_intel do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "8e662477bd141da885bb9f3b87000ddb78cc77d98bc092bcb7afadc25ec1d681"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jorgsowa/php-lsp/releases/download/v#{version}/php-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e58049418f9c46c7f9dc7f797ab9f4b57582ebe852b6031b4c6586d0675ab551"
    end
  end

  def install
    bin.install "php-lsp"
  end

  test do
    assert_predicate bin/"php-lsp", :executable?
  end
end
