# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.75-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.75-rc/datree-cli_0.14.75-rc_Darwin_x86_64.zip"
    sha256 "0b06d5dbcf303a1762d230b8a315c3802dc44576e38012c82c44fc1fc47e11be"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.75-rc/datree-cli_0.14.75-rc_Linux_x86_64.zip"
    sha256 "c8a38a10bd61a8b5005cd46900b9a00f6d1c9e9904bfea691706f3d4cd58ac14"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.75-rc/datree-cli_0.14.75-rc_Linux_arm64.zip"
    sha256 "69115040f0f529848c69b98787645b3959c8940831198f642a2939be86e1d7ff"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
