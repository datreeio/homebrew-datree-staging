# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.10-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.10-rc/datree-cli_1.4.10-rc_Darwin_x86_64.zip"
    sha256 "66ae8f176d907129e376dce7d9a04261b3a9c0a8ae3be13572417a1615fc8dc4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.10-rc/datree-cli_1.4.10-rc_Darwin_arm64.zip"
    sha256 "7310afe462997543454d2a15f2fd6e1b2bd92c29bbc1a6e7c139f862dadcabd1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.10-rc/datree-cli_1.4.10-rc_Linux_x86_64.zip"
    sha256 "fd5e9ac3562ec7cda2c1b40f2f193d4063c74bb4329d97c2335d56a7867a8c52"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.10-rc/datree-cli_1.4.10-rc_Linux_arm64.zip"
    sha256 "4e70fb67571815d0683687c3b753f96c943d265345ecf87325d1d27b708cae93"
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
