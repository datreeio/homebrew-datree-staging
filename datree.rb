# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.28-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.28-rc/datree-cli_0.15.28-rc_Darwin_x86_64.zip"
    sha256 "ce64e5995b85d16c00e62e2d1483cddae103150c1e7909306488b0edc2e64828"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.28-rc/datree-cli_0.15.28-rc_Darwin_arm64.zip"
    sha256 "b6f3fbccaaf8d02eec5e6984ea4eea81cfe13a0b2a222b229fe2e39a58e5653d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.28-rc/datree-cli_0.15.28-rc_Linux_x86_64.zip"
    sha256 "9f2375442bfe178a1021d5757b6cf9c8287928dfac5dc40dcdd681de7aaece5b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.28-rc/datree-cli_0.15.28-rc_Linux_arm64.zip"
    sha256 "cafb5ad74ab4c5fbfec1fbbb79d667bbf12cd071aaf0e2d99592553a5ac3e3d4"
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
