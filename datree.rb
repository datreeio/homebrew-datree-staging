# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.28-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.28-rc/datree-cli_1.8.28-rc_Darwin_x86_64.zip"
    sha256 "15f05210fb336156b8213b107c216980216b0ada465ab7d2fc0d5bfe5ebc6492"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.28-rc/datree-cli_1.8.28-rc_Darwin_arm64.zip"
    sha256 "72d436326638a4e81ebb7f12ab690ac7c1c1fd97d915f0b63ff586122a263d79"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.28-rc/datree-cli_1.8.28-rc_Linux_x86_64.zip"
    sha256 "a7275d61bf3a61c0461925ccbc337a2b6bc2bd2ce7f9138ad1e5eca1930f59bc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.28-rc/datree-cli_1.8.28-rc_Linux_arm64.zip"
    sha256 "fe2bbe50baa38635d004565909d483efe459d6c13aaf9772487b2d9b592e81ea"
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
