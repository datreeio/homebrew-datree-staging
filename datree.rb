# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.31-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.31-rc/datree-cli_1.6.31-rc_Darwin_x86_64.zip"
    sha256 "dfe24d20338a902e63a8a1fbcd47a765a324b5305bcdb68303aac6013baf0a2d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.31-rc/datree-cli_1.6.31-rc_Darwin_arm64.zip"
    sha256 "2782f829e79ade61ba1e3d29b8f0dea4b5a238361e208268b77f2a6e2bc6184b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.31-rc/datree-cli_1.6.31-rc_Linux_x86_64.zip"
    sha256 "45893cead8d54baa20d9bdb6e00c05d70e0cafa71cdf2476bfd1a2c534085cf3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.31-rc/datree-cli_1.6.31-rc_Linux_arm64.zip"
    sha256 "0586ed7e24c12ec2d7e0068a537be4f5f37d01178e34dd1f6788640b86c8070b"
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
