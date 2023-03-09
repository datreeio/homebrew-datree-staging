# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.39-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.39-rc/datree-cli_1.8.39-rc_Darwin_x86_64.zip"
    sha256 "2a24f84de3420b743322335949a9cda23e8fff8fd4985d53de921dddc3c1cf8a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.39-rc/datree-cli_1.8.39-rc_Darwin_arm64.zip"
    sha256 "92c2af987910a196ba5e2d3bda9b3a8f7b5bcf969abcc401786fa1b52896aac5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.39-rc/datree-cli_1.8.39-rc_Linux_x86_64.zip"
    sha256 "1ffd5474997bc1d619d5591718e2788eb106368727749a77e6d0bbb2cf655cce"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.39-rc/datree-cli_1.8.39-rc_Linux_arm64.zip"
    sha256 "17c0ec4e6e4386bb6dc06ca33e16152b968687d907e028575bb7291f7146f612"
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
