# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nats < Formula
  desc "NATS utility"
  homepage "https://github.com/nats-io/nats"
  version "0.0.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nats-io/natscli/releases/download/v0.0.28/nats-0.0.28-darwin-arm64.zip"
      sha256 "10c96ddc0fdc581443ce54cc30e732822ee142ce56df0b2e1c875aeb4d6d93b3"

      def install
        bin.install "nats"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/natscli/releases/download/v0.0.28/nats-0.0.28-darwin-amd64.zip"
      sha256 "95adb0291838013810b8346c36bf1bc731030550718c2e7d35a94e1735c716ae"

      def install
        bin.install "nats"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nats-io/natscli/releases/download/v0.0.28/nats-0.0.28-linux-arm6.zip"
      sha256 "87ea2ef29755ffdc0068ca53705d93fb4064cc0e7c9d03850449d199ba7f2cee"

      def install
        bin.install "nats"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nats-io/natscli/releases/download/v0.0.28/nats-0.0.28-linux-arm64.zip"
      sha256 "7255ef21f5f93507bc883fa755c721e81f8a3d5a4a288a20f76792de3e3b0bc4"

      def install
        bin.install "nats"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/natscli/releases/download/v0.0.28/nats-0.0.28-linux-amd64.zip"
      sha256 "0501cabd5da181a263bd2ac4d8bb35bddd022dd08fa2e2d537eae711997811a3"

      def install
        bin.install "nats"
      end
    end
  end

  test do
    system "#{bin}/nats --version"
  end
end
