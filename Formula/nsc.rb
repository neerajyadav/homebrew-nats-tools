# This file was generated by GoReleaser. DO NOT EDIT.
class Nsc < Formula
  desc "A tool for creating NATS account and user access configurations"
  homepage "https://github.com/nats-io/nsc"
  version "0.4.10"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nats-io/nsc/releases/download/0.4.10/nsc-darwin-amd64.zip"
    sha256 "d72b3d3d198eac7dab62685f06cfd48e0abd24913e10006aa7dd4d1cf792242d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/nsc/releases/download/0.4.10/nsc-linux-amd64.zip"
      sha256 "aad09716d3d2ae2f8f237edb3f12677820d7b7e08a10ff16dd631f8b845393f0"
    end
  end

  def install
    bin.install "nsc"
  end

  test do
    system "#{bin}/nsc --version"
  end
end
