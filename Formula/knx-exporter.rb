# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KnxExporter < Formula
  desc "The KNX Prometheus Exporter is a small bridge to export values measured by KNX sensors to Prometheus."
  homepage "https://github.com/chr-fritz/knx-exporter"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chr-fritz/knx-exporter/releases/download/v0.2.5/knx-exporter_0.2.5_darwin_amd64.tar.gz"
      sha256 "277f47195702a0b9dab8ae791956c04c2f3099da9b6c0236512d6cf1a91f4d01"

      def install
        bin.install "knx-exporter"
        bash_completion.install "completions/knx-exporter.bash" => "knx-exporter"
        zsh_completion.install "completions/knx-exporter.zsh" => "_knx-exporter"
        fish_completion.install "completions/knx-exporter.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chr-fritz/knx-exporter/releases/download/v0.2.5/knx-exporter_0.2.5_darwin_arm64.tar.gz"
      sha256 "3a1ca471aae0abaadf962bb8f88cbc5854386daf0adb8107c2513ebe54623aaa"

      def install
        bin.install "knx-exporter"
        bash_completion.install "completions/knx-exporter.bash" => "knx-exporter"
        zsh_completion.install "completions/knx-exporter.zsh" => "_knx-exporter"
        fish_completion.install "completions/knx-exporter.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chr-fritz/knx-exporter/releases/download/v0.2.5/knx-exporter_0.2.5_linux_arm64.tar.gz"
      sha256 "5793a5be22b3f54c4cef8f45e4aa1e6150591df360b892b55b96c55701db2385"

      def install
        bin.install "knx-exporter"
        bash_completion.install "completions/knx-exporter.bash" => "knx-exporter"
        zsh_completion.install "completions/knx-exporter.zsh" => "_knx-exporter"
        fish_completion.install "completions/knx-exporter.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chr-fritz/knx-exporter/releases/download/v0.2.5/knx-exporter_0.2.5_linux_amd64.tar.gz"
      sha256 "7f7a15fdc5bad28f71fbd0f81e670fdea9c12a236f19e4439d815f7c6928952a"

      def install
        bin.install "knx-exporter"
        bash_completion.install "completions/knx-exporter.bash" => "knx-exporter"
        zsh_completion.install "completions/knx-exporter.zsh" => "_knx-exporter"
        fish_completion.install "completions/knx-exporter.fish"
      end
    end
  end

  test do
    system "#{bin}/knx-exporter --version"
  end
end
