# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.31-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.31-rc/datree-cli_1.5.31-rc_Darwin_x86_64.zip"
    sha256 "32edecc0a361bc980176143c818b23ca14679a21e2dd493a1032c7560de70402"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.31-rc/datree-cli_1.5.31-rc_Darwin_arm64.zip"
    sha256 "ba25113ed5348c8dce9e8352e126bd5e1dfb6cf91214ba99f244d79f0cae12ed"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.31-rc/datree-cli_1.5.31-rc_Linux_x86_64.zip"
    sha256 "433c7f6825bcbe4b5236fc7ad3f3d415635d7add41988ef1ad4d9f8bbea44158"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.31-rc/datree-cli_1.5.31-rc_Linux_arm64.zip"
    sha256 "c660500399ad1a2f4a0a50b436875a28f0d85045c143ac5026203178d6d6d583"
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
