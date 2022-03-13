# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.2-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.2-rc/datree-cli_0.16.2-rc_Darwin_x86_64.zip"
    sha256 "45eb5d4857731f6d12a7ab40f96bb9471100c265f6ae20d3b8b2d61c4efd3389"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.2-rc/datree-cli_0.16.2-rc_Darwin_arm64.zip"
    sha256 "2a872c3017a94bf4539277854f04bcbc2b9c862525a8c8f6419b821b90894f64"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.2-rc/datree-cli_0.16.2-rc_Linux_x86_64.zip"
    sha256 "2c0d680a301200efde4bbd530d81bbba4d4db00afe6a6fa56cfae52e25c31aa1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.2-rc/datree-cli_0.16.2-rc_Linux_arm64.zip"
    sha256 "dd8771a566f3386ec9bf664b3ce753ddf45b2c1d177f1b36d8afaf3ddcb2f61e"
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
      tput init
    EOS
  end
end
