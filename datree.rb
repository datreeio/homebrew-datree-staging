# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.37-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.37-rc/datree-cli_1.8.37-rc_Darwin_x86_64.zip"
    sha256 "a76d34a64f76a5e210ff07b78283054aa9fdcce51e9e10378b3e0796f8869f25"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.37-rc/datree-cli_1.8.37-rc_Darwin_arm64.zip"
    sha256 "6b2481d322c7e56e4c42fc5170368c75c7dbc3c5d0bf9f8282ad95f07e835cb5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.37-rc/datree-cli_1.8.37-rc_Linux_x86_64.zip"
    sha256 "ebc974bbef11d8f641d08d2f097a3193b5c33f1d7ef437a918761bf37de35d32"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.37-rc/datree-cli_1.8.37-rc_Linux_arm64.zip"
    sha256 "d5832f705ac331d14f7eaa91e0dbfbd2eada589c0d160db6cee8139ff6ee1611"
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
