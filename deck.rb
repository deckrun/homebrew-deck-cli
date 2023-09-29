# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Deploy your apps to your own Platform as a Service."
  homepage "https://deckrun.com/"
  version "0.0.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.26/deck_Darwin_x86_64.tar.gz"
      sha256 "fe81c6b55ddbf87101d6396f7ce459903529616962d8582e55af2ea79a8cfec2"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.26/deck_Darwin_arm64.tar.gz"
      sha256 "ba8a1b1a333a7b925c274706c5ad78f81cb9f26e1b027f2ffa0ebc1d9db0ff3b"

      def install
        bin.install "deck"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.26/deck_Linux_arm64.tar.gz"
      sha256 "699042153cfea6c8b3cad70c7800b9424f84ebe047908061e9b54da6dc46e3f7"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.26/deck_Linux_x86_64.tar.gz"
      sha256 "f518bc93347d556bcdc88a86ae199327d80767069b4058c7c32b2729170b4452"

      def install
        bin.install "deck"
      end
    end
  end

  test do
    system "#{bin}/deck version"
  end
end
