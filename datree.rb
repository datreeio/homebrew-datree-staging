# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.17-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.17-rc/datree-cli_0.15.17-rc_Darwin_x86_64.zip"
    sha256 "5db6b67744f2bb3d091f234e547007f9c8cd7ccc115f55594433d55d13ade2ac"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.17-rc/datree-cli_0.15.17-rc_Darwin_arm64.zip"
    sha256 "0146bf5bd17bd678abaf788f8f123a1e85c634e8be76db972be43384229712d6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.17-rc/datree-cli_0.15.17-rc_Linux_x86_64.zip"
    sha256 "663328cbbf66138e1d982f4996c39db58e23450e6472030985829276008e2234"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.17-rc/datree-cli_0.15.17-rc_Linux_arm64.zip"
    sha256 "3dbeeafd028a490da0c57b599d4652fcc3f6b4fd29fe489ae7322024562ce37b"
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
