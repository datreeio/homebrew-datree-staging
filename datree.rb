# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.12-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.12-rc/datree-cli_1.9.12-rc_Darwin_x86_64.zip"
    sha256 "ce66dbd1009b3c22d94d67ef87264d8bf54d90b92de92bd2f66628fbc255b013"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.12-rc/datree-cli_1.9.12-rc_Darwin_arm64.zip"
    sha256 "040f2675399a01379a7d19ec339e539dbe88710f975d6509810fa0da26879513"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.12-rc/datree-cli_1.9.12-rc_Linux_x86_64.zip"
    sha256 "295f805352b4e62eacabe2813f141b562ea1c7b3e23f6b46cdce049ee139cf6c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.12-rc/datree-cli_1.9.12-rc_Linux_arm64.zip"
    sha256 "dacabcd9ff615e108e8c3dfb6288266fe68bc1060507b4db12b9ae43f6c7cd85"
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
