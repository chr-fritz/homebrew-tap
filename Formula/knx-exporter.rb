# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KnxExporter < Formula
  desc "The KNX Prometheus Exporter is a small bridge to export values measured by KNX sensors to Prometheus."
  homepage "https://github.com/chr-fritz/knx-exporter"
  version "0.2.3"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chr-fritz/knx-exporter/releases/download/v0.2.3/knx-exporter_0.2.3_darwin_arm64.tar.gz"
      sha256 "92cf09559925aa36fde4aff4a4af2a991de980d71fceec8f036fd91a294689b7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/chr-fritz/knx-exporter/releases/download/v0.2.3/knx-exporter_0.2.3_darwin_amd64.tar.gz"
      sha256 "32da922865fa8db75474e4f7e4e9c3920d1db6172afbfd0e3b27acc7c40adbf7"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chr-fritz/knx-exporter/releases/download/v0.2.3/knx-exporter_0.2.3_linux_arm64.tar.gz"
      sha256 "d1b67de2316e65e689cd9d28d560e7bca1c50445ce7d12db7bfce7735cb0fc4e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/chr-fritz/knx-exporter/releases/download/v0.2.3/knx-exporter_0.2.3_linux_amd64.tar.gz"
      sha256 "386d2cfea09bf1924a3e09561b845626e861137b2fd6a0678cba04e39aa37daa"
    end
  end

  def install
    bin.install "knx-exporter"
    bash_completion.install "completions/knx-exporter.bash" => "knx-exporter"
    zsh_completion.install "completions/knx-exporter.zsh" => "_knx-exporter"
    fish_completion.install "completions/knx-exporter.fish"
  end

  test do
    system "#{bin}/knx-exporter --version"
  end
end
