# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Deploy your apps to your own Platform as a Service."
  homepage "https://deckrun.com/"
  version "0.0.63"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.63/deck_Darwin_x86_64.tar.gz"
      sha256 "1980643e5f53ed115ae90ee739a5126359682961cffd8f54dc34a8b8611dbd29"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.63/deck_Darwin_arm64.tar.gz"
      sha256 "33b09621d65e71eddd41b7a25e0ef14a540b000bc08e9570c41c36b7c1c3200c"

      def install
        bin.install "deck"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/deckrun/deck-cli/releases/download/v0.0.63/deck_Linux_x86_64.tar.gz"
        sha256 "ea6c45c5c648f1d459f098992f88cf91cc3f2311239b163f37f26dbc924a62ab"

        def install
          bin.install "deck"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/deckrun/deck-cli/releases/download/v0.0.63/deck_Linux_arm64.tar.gz"
        sha256 "4e42c516fb47a09de28c4cee03dbb6495bfdac8c7a3b3118543c0d517e0c8b7c"

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
