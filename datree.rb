# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.12-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.12-rc/datree-cli_0.16.12-rc_Darwin_x86_64.zip"
    sha256 "4250b3f4edc773bd2865e421aa4a6168050f485272039c39984180c699bb937d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.12-rc/datree-cli_0.16.12-rc_Darwin_arm64.zip"
    sha256 "7b62ee06ca270780eca2bad06e1c5f820b2cf4051d9f0a3e571773d16bfa6379"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.12-rc/datree-cli_0.16.12-rc_Linux_x86_64.zip"
    sha256 "1ddb8773e6a5ad59144d22f5f8b8c889880065fc32124ec823850950bc412038"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.12-rc/datree-cli_0.16.12-rc_Linux_arm64.zip"
    sha256 "53bb21045aba915f7809dbe0b5ed8a75f4b4f79044c38f318deccf54eb11670d"
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
