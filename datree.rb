# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.18-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.18-rc/datree-cli_1.5.18-rc_Darwin_x86_64.zip"
    sha256 "13d7b5f35e9d3d851e4eade92111c11829ce9523b3d19f8e795211b00ac4d61d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.18-rc/datree-cli_1.5.18-rc_Darwin_arm64.zip"
    sha256 "40a65580c987f8331cf3914f074aee43d8bb4fc2032e6b2ea1acd260fbc4ca90"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.18-rc/datree-cli_1.5.18-rc_Linux_x86_64.zip"
    sha256 "ed932c1cf26248b26b2ea2155c2e5e51494470ebc2a76314ea25e122c55599cb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.18-rc/datree-cli_1.5.18-rc_Linux_arm64.zip"
    sha256 "dc416d0e32e37943ad4a6b6cd297a58d236311189004e28385aa9207d107562a"
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
