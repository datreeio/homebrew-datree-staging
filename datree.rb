# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.15-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.15-rc/datree-cli_0.16.15-rc_Darwin_x86_64.zip"
    sha256 "ef43e68eda32a160df92142223b1f4b75911fef273b2d235a7236c5d0d3260b0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.15-rc/datree-cli_0.16.15-rc_Darwin_arm64.zip"
    sha256 "3bcc1adb00365234b7021a69bb8ef0ffc4a09da7831dcfa366cb7644813e3fed"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.15-rc/datree-cli_0.16.15-rc_Linux_x86_64.zip"
    sha256 "4e54669693f67d00444fd2e384cbaddb55f55a24517b502af2157de997e066d4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.15-rc/datree-cli_0.16.15-rc_Linux_arm64.zip"
    sha256 "a7195008e3fb4dd71c30448230074ecbd066963aafe2bfb42f5e5a78fc12fec9"
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
