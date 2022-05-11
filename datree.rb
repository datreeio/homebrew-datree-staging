# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.7-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.7-rc/datree-cli_1.4.7-rc_Darwin_x86_64.zip"
    sha256 "56d50344694fbb7a09cb56ea61f4f04ae7bffb8e7722ef594741660840b95ea4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.7-rc/datree-cli_1.4.7-rc_Darwin_arm64.zip"
    sha256 "7a910c2bb4769e95a676824df80ddd6e8f04ea46070b9f3d76aa1b0bd0067b85"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.7-rc/datree-cli_1.4.7-rc_Linux_x86_64.zip"
    sha256 "6de66a0495cf2a2a70223e57a830aaf3dddd79a13af6a47655c4e3e1a19c422c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.7-rc/datree-cli_1.4.7-rc_Linux_arm64.zip"
    sha256 "e647e37de83fecf344f7be4d01ae375836afc4b460dc240aa6dfd11ecb69383e"
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
