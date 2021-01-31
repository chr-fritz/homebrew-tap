# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KnxExporter < Formula
  desc "The KNX Prometheus Exporter is a small bridge to export values measured by KNX sensors to Prometheus."
  homepage "https://github.com/chr-fritz/knx-exporter"
  version "0.1.1"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chr-fritz/knx-exporter/releases/download/v0.1.1/knx-exporter_0.1.1_darwin_amd64.tar.gz"
    sha256 "3a9223b1e8164add8cffc50d632eb2032a5c67e5c0ad6206794cdfbc952ece51"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/chr-fritz/knx-exporter/releases/download/v0.1.1/knx-exporter_0.1.1_linux_amd64.tar.gz"
    sha256 "938bc84f2d0b3d38845cd00e2b59893854fc041bb671862fc2737bb98046f1a3"
  end

  def install
    bin.install "knx-exporter"
    bash_completion.install "completions/knx-exporter.bash" => "knx-exporter"
    zsh_completion.install "completions/knx-exporter.zsh" => "_knx-exporter"
  end

  test do
    system "#{bin}/knx-exporter --version"
  end
end
