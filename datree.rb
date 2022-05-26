# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.32-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.32-rc/datree-cli_1.4.32-rc_Darwin_x86_64.zip"
    sha256 "5be32d3072e3dce97074d7ded81767fd72a972643603234665f6b5e09fdb165f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.32-rc/datree-cli_1.4.32-rc_Darwin_arm64.zip"
    sha256 "3043197d6cbf0884c9c9c879bb00b9e43ebbc90945214b33b067b4977c1ae497"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.32-rc/datree-cli_1.4.32-rc_Linux_x86_64.zip"
    sha256 "ed9c55654b3390120217c95b971b4f69927361ba0044caa669a4cfca436ba986"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.32-rc/datree-cli_1.4.32-rc_Linux_arm64.zip"
    sha256 "167c2b8db170dfa429df2d2603ae190b62c19186daa84919311dd94175261c64"
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
