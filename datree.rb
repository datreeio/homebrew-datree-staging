# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.19-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.19-rc/datree-cli_0.15.19-rc_Darwin_x86_64.zip"
    sha256 "72a3655d81df3c987ed56974b66cdf272c8a74e3feac9205c715fd69872ac6f7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.19-rc/datree-cli_0.15.19-rc_Darwin_arm64.zip"
    sha256 "b309d4e62da980c0c5b2c06e574564e651903198175c0f78ea4a8befa893db7c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.19-rc/datree-cli_0.15.19-rc_Linux_x86_64.zip"
    sha256 "9f66235b8459e4e09f9a8c219a3302688e948d67b89db7fcf9751146d1fd64e8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.19-rc/datree-cli_0.15.19-rc_Linux_arm64.zip"
    sha256 "d2b533824909a0852a1d07b17a643d62ee0bbea60aeecface08fe552bd84b55b"
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
