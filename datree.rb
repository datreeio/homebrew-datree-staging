# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.19-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.19-rc/datree-cli_1.8.19-rc_Darwin_x86_64.zip"
    sha256 "13b8c36ea80be9ab154f4c754830af7e9be434afc80e82503172dd02162bac5e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.19-rc/datree-cli_1.8.19-rc_Darwin_arm64.zip"
    sha256 "84dd1493203537e07508e32dd1e2002c799faa3cac417d2c63894edae9ef2c74"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.19-rc/datree-cli_1.8.19-rc_Linux_x86_64.zip"
    sha256 "b5eb270f670910cfd27fe0971496bc07b1eb156741f31ed2f53b5de2f9440c88"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.19-rc/datree-cli_1.8.19-rc_Linux_arm64.zip"
    sha256 "66c9e2b7f3dcbee1d2d5e0ebac4c7b84c80f9f6b3f78f4be39bd8779e926272c"
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
