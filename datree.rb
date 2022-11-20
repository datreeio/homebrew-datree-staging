# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.1-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.1-rc/datree-cli_1.8.1-rc_Darwin_x86_64.zip"
    sha256 "4d19ca1c1d41810c4412f1b1a8e2f27da83c95c1acec532841de2aa3cac91d1f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.1-rc/datree-cli_1.8.1-rc_Darwin_arm64.zip"
    sha256 "bdd751096c43a3560c631e5d8c69f3cf3f83b01f87259d5b63e65ea32189bc23"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.1-rc/datree-cli_1.8.1-rc_Linux_x86_64.zip"
    sha256 "4e2e8868821b6686ecfa1d978addf2de4a75b06133ec66f840731f47641f634d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.1-rc/datree-cli_1.8.1-rc_Linux_arm64.zip"
    sha256 "6606dc399853e529570371fdf2134a091c48add1ab884b3b4294bbec49beafa4"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://github.com/datreeio/helm-datree
       Using Kustomize? => https://hub.datree.io/kustomize-support
    EOS
  end
end
