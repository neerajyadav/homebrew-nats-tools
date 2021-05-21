# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nsc < Formula
  desc "A tool for creating NATS account and user access configurations"
  homepage "https://github.com/nats-io/nsc"
  version "2.2.4"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/nats-io/nsc/releases/download/2.2.4/nsc-darwin-amd64.zip"
    sha256 "ad3fa940027b52b3d7b79c40706ef5dbc473212104480ceda659876d5440beb5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/nats-io/nsc/releases/download/2.2.4/nsc-darwin-arm64.zip"
    sha256 "f7972d68fb41c67b28745f5ed6ff6bf04e7f4cd3c939d950eed309a454d3d9e6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nats-io/nsc/releases/download/2.2.4/nsc-linux-amd64.zip"
    sha256 "65b0f5929b50820d48c0904054bdbe9a3f76c61907b530ec42faad78da40987d"
  end

  def install
    bin.install "nsc"
  end

  test do
    system "#{bin}/nsc --version"
  end
end
