# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.38-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.38-rc/datree-cli_1.8.38-rc_Darwin_x86_64.zip"
    sha256 "42c8282d89c0f60be1dff6190799b3bf5db75f057c28a489926aadd5aa87450e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.38-rc/datree-cli_1.8.38-rc_Darwin_arm64.zip"
    sha256 "6e1059f13f4fb3333e1af14b52e0f30c93437abfb6de8beb9836c1cf4c029a98"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.38-rc/datree-cli_1.8.38-rc_Linux_x86_64.zip"
    sha256 "a04c213b17d654ff237bd4f31163a143d67a148bc946772a75516a9d2977ea6e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.38-rc/datree-cli_1.8.38-rc_Linux_arm64.zip"
    sha256 "82de0e03ab76dea209b98a19d545f80b3ba407d3225503f9a9c35365d3031baa"
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
