# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.25-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.25-rc/datree-cli_1.6.25-rc_Darwin_x86_64.zip"
    sha256 "c617751f1f0e2205cf600673a3a6d89434ac1707dd41dc97ac36612868dc5cb7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.25-rc/datree-cli_1.6.25-rc_Darwin_arm64.zip"
    sha256 "e276ea52cf73a27f30c03bd99e21561db8498f281fbcfdee083d82fb805e0213"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.25-rc/datree-cli_1.6.25-rc_Linux_x86_64.zip"
    sha256 "28eff60c98827a199c042b615f703ca1063f89fc4cc444de4276357ce9f03d04"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.25-rc/datree-cli_1.6.25-rc_Linux_arm64.zip"
    sha256 "b423a14bc41dae80ce4f30afd4fbb856173d3965f23da37a8bb8db506be31635"
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
