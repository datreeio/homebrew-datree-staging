# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.15-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.15-rc/datree-cli_1.0.15-rc_Darwin_x86_64.zip"
    sha256 "863b2b6e90e3c6197c7ff5bd5d0e5978ac32965a801e9b25c70d9ee61d559800"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.15-rc/datree-cli_1.0.15-rc_Darwin_arm64.zip"
    sha256 "09d57c1400609501828fdcc4bfe59d630a09383661dc9456e51d6db187cfcacc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.15-rc/datree-cli_1.0.15-rc_Linux_x86_64.zip"
    sha256 "604018cb143c96e5ae14f36b7678956370e0d097983ba9f92b89e1e305d6e944"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.15-rc/datree-cli_1.0.15-rc_Linux_arm64.zip"
    sha256 "873a7b749745002aa5dec876bf2c47b0c1aa1974e12e29f97a533cc0cca2de0b"
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
      tput init
    EOS
  end
end
