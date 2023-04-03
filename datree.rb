# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.50-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.50-rc/datree-cli_1.8.50-rc_Darwin_x86_64.zip"
    sha256 "c1f59a87ae46c45a3e84070866a572c35e7f7f93d5b21f4a4aa37b8c75ec8cdf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.50-rc/datree-cli_1.8.50-rc_Darwin_arm64.zip"
    sha256 "37eff5a2954027d2ec7c3a4817f681d2786a4edee5addcede3b421b36d0b3088"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.50-rc/datree-cli_1.8.50-rc_Linux_x86_64.zip"
    sha256 "98e64808eab8836c22353236759b524339cbaa306a2cfa94b1b624c03794d3f6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.50-rc/datree-cli_1.8.50-rc_Linux_arm64.zip"
    sha256 "8995c70b810284f376999dba3801d1544df37adb7b1dc1cc0b62ba07b5a75fcd"
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
