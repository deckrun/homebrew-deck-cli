# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Deploy your apps to your own Platform as a Service."
  homepage "https://deckrun.com/"
  version "0.0.79"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.79/deck_Darwin_x86_64.tar.gz"
      sha256 "46414c5bfae00e3458da6941de7f5742a6ef551fe86ee3d69d63f9a98fc9a8bb"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.79/deck_Darwin_arm64.tar.gz"
      sha256 "392705f182492889c6c8b87c544760d87faf8485959bb26d788b26ff6647a9a1"

      def install
        bin.install "deck"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/deckrun/deck-cli/releases/download/v0.0.79/deck_Linux_x86_64.tar.gz"
        sha256 "7062bcae9e95403954b2d529b58e400398766097ecddded10f3ebefd6be7c77f"

        def install
          bin.install "deck"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/deckrun/deck-cli/releases/download/v0.0.79/deck_Linux_arm64.tar.gz"
        sha256 "8e770341e2204f4fc221285214a5efc2a968f48cb6a6b1e382395c85b137e055"

        def install
          bin.install "deck"
        end
      end
    end
  end

  test do
    system "#{bin}/deck version"
  end
end
