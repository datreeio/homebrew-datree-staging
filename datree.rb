# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.35-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.35-rc/datree-cli_0.14.35-rc_Darwin_x86_64.zip"
    sha256 "711e433784d4e177224d9b9957b93becba9727bd18da57c5c8f7a592ed64057b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.35-rc/datree-cli_0.14.35-rc_Linux_x86_64.zip"
    sha256 "5ad590b9a0a5bbc9b8a6393b27859ee2694a2fe66bfda5d750ac15eac7f0e2a6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.35-rc/datree-cli_0.14.35-rc_Linux_arm64.zip"
    sha256 "7523858c70e8757eac85403a6417927fc02741b7f3b30326ecb1a48855b8dfce"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
