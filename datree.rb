# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.16-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.16-rc/datree-cli_1.6.16-rc_Darwin_x86_64.zip"
    sha256 "30fb39a5cb63f4ab8deee51fe3677f379444d265cfbe4c5a5c9a7b3b11a966bf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.16-rc/datree-cli_1.6.16-rc_Darwin_arm64.zip"
    sha256 "98f3e52acb798ff9aed7fdc051c39a5a9fc25580aff3c1aad340a3a2ab8b959f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.16-rc/datree-cli_1.6.16-rc_Linux_x86_64.zip"
    sha256 "556e0169118d24ce590319911a34344d0a7b773da038139362e81654d4488552"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.16-rc/datree-cli_1.6.16-rc_Linux_arm64.zip"
    sha256 "e881e55c9c4e5089ab8c2ccbf25130e91ff5d19b962cb54328ce4eb2316b5c1a"
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
