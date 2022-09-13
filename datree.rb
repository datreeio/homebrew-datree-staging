# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.26-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.26-rc/datree-cli_1.6.26-rc_Darwin_x86_64.zip"
    sha256 "870e666eda24200903303e25a06e433600890c9bbd57aff6893f521863721d5e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.26-rc/datree-cli_1.6.26-rc_Darwin_arm64.zip"
    sha256 "81caf36491c15ac64317af896938ef39ac90ff812127784e1772ed13a64b4c06"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.26-rc/datree-cli_1.6.26-rc_Linux_x86_64.zip"
    sha256 "db731766a3aa3f9e3bbc3b35b0ec491a5b02b7d3f94236d08ffb027e2d4e8b92"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.26-rc/datree-cli_1.6.26-rc_Linux_arm64.zip"
    sha256 "ea4de19e660dad1c80151dae0e58f82f1ee9722b11e5009ded5c10de27337180"
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
