# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.34-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.34-rc/datree-cli_1.6.34-rc_Darwin_x86_64.zip"
    sha256 "38e66c4fe35c91eb8a35675703f98de218a17954171f0ce421817620d7f9a18e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.34-rc/datree-cli_1.6.34-rc_Darwin_arm64.zip"
    sha256 "685f5efc1be7c140a377df9331c7c7481df2e532efa7c7967e5a10634ac86750"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.34-rc/datree-cli_1.6.34-rc_Linux_x86_64.zip"
    sha256 "edc2671948445bed0c722a900ccfdb83ce57f9383aa13653782d9b992fa15d6a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.34-rc/datree-cli_1.6.34-rc_Linux_arm64.zip"
    sha256 "3cc55cdda9624ae58c131688a452145ed6967b3a9c9111c7c55d4f772d23cb2d"
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
