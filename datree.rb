# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.6-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.6-rc/datree-cli_1.8.6-rc_Darwin_x86_64.zip"
    sha256 "9d8c49252308cc0c633a6282b3e93ac5d7b1db229536a088a913037b6c7f2da7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.6-rc/datree-cli_1.8.6-rc_Darwin_arm64.zip"
    sha256 "8a10f03f1d56ff1508602177ed4e57ea56b9a08b3b12e05ce2bcefb4c8a8449c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.6-rc/datree-cli_1.8.6-rc_Linux_x86_64.zip"
    sha256 "5afa093117a03a66c80e860b3d4e468ad510d31fec0b678f8cc89634084922c4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.6-rc/datree-cli_1.8.6-rc_Linux_arm64.zip"
    sha256 "15af6bd1ab5de72016a33c7f19dca3112dc2f5a720872903fae8a045e7bc7f54"
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
