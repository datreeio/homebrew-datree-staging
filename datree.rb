# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.26-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.26-rc/datree-cli_1.8.26-rc_Darwin_x86_64.zip"
    sha256 "2671dec2b87d5337f0148cd075ce0a8763e69e0d0a2908ea01194daebc738180"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.26-rc/datree-cli_1.8.26-rc_Darwin_arm64.zip"
    sha256 "1166506fe340357067b07f46f8da93f70889882a69caa7ab00de2366a420e47a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.26-rc/datree-cli_1.8.26-rc_Linux_x86_64.zip"
    sha256 "9f8ab7c1577264791263103df560c652f550d69e64f347f9d922e864e0d76956"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.26-rc/datree-cli_1.8.26-rc_Linux_arm64.zip"
    sha256 "dfbcbf8a47a98d9c8d48f2b8839822b5278068e6a1cb943195c566a01447e8a6"
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
