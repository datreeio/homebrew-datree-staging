# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.2-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.2-rc/datree-cli_1.3.2-rc_Darwin_x86_64.zip"
    sha256 "9ff654c4f1838c80fbff41b5873f9b32aa222cc8330fc051ad3d027790f291b0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.2-rc/datree-cli_1.3.2-rc_Darwin_arm64.zip"
    sha256 "be93439f337d3e5577c33321e8c7e03114fdd68015b6062faa1b747e3d645bf3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.2-rc/datree-cli_1.3.2-rc_Linux_x86_64.zip"
    sha256 "a7724a75ff32a838b3cdd9ac3072848e1b53fc3f5c8543c46f7275a019a5972f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.2-rc/datree-cli_1.3.2-rc_Linux_arm64.zip"
    sha256 "3460e8c86a27c240c021cfe0af37558617ed7037838030085b17285be9ed0199"
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
