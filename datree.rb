# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.3-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.3-rc/datree-cli_1.2.3-rc_Darwin_x86_64.zip"
    sha256 "16561e192f6c1130d049c2615a9e8e4986ff702976752c72e1a131c3ab8520a7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.3-rc/datree-cli_1.2.3-rc_Darwin_arm64.zip"
    sha256 "335b574ffa0a15b1c26f7fc505be364f2857ebc28b8838d14ac7fd92c6597d52"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.3-rc/datree-cli_1.2.3-rc_Linux_x86_64.zip"
    sha256 "0d0bbbc0e0b895c39f79f490f6908a43f5050f3589002c5359f98fd1bff7f383"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.3-rc/datree-cli_1.2.3-rc_Linux_arm64.zip"
    sha256 "97fca37d63897037a889eb8f854c0989d0a314a6d42e0e5aa0cad795c2de0cbc"
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
