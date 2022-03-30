# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.6-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.6-rc/datree-cli_1.1.6-rc_Darwin_x86_64.zip"
    sha256 "470f517ccbccbda8af5fcd7f0e1d468a728978a56fa6db91e6e4a4b278610add"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.6-rc/datree-cli_1.1.6-rc_Darwin_arm64.zip"
    sha256 "048a5a97e58501ac9308de661554fac5d754907ca7392ef144da48e3de86f2d0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.6-rc/datree-cli_1.1.6-rc_Linux_x86_64.zip"
    sha256 "4ab96551227ee4680b2dfe20a71c1495012a758ad2cc8c122cafbad885020372"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.6-rc/datree-cli_1.1.6-rc_Linux_arm64.zip"
    sha256 "723faf833032092279e1cd1f3a8191a89708d1fdc2011659fa00443fda3c9517"
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
