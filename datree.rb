# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.16-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.16-rc/datree-cli_1.4.16-rc_Darwin_x86_64.zip"
    sha256 "c1dd13ad64333070e7fe497798ee01cc2b1bfe93e066c9fcec5b256ecda98d17"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.16-rc/datree-cli_1.4.16-rc_Darwin_arm64.zip"
    sha256 "4038f5105ba08514028de24de7f0e734d0eccca6828a331626b7e269fcb952d2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.16-rc/datree-cli_1.4.16-rc_Linux_x86_64.zip"
    sha256 "04fc753ed6a8da1bdfbd41ececaeed28920ecd142d8765d0488b248f874e0366"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.16-rc/datree-cli_1.4.16-rc_Linux_arm64.zip"
    sha256 "5b4db8384ecc0c24229517589ce1e9d8a2a3ad3fa088a85136e8121b8a866efe"
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
