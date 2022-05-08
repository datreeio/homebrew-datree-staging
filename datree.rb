# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.5-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.5-rc/datree-cli_1.4.5-rc_Darwin_x86_64.zip"
    sha256 "a6c775d3ccfde17eafdab5420c4dcb0af8e75715834411802e1a7c2f9afdbc9c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.5-rc/datree-cli_1.4.5-rc_Darwin_arm64.zip"
    sha256 "cc4056fdab6a4d0e71c8ee07a237af4110f2fc6c854ce4cfb8a7300e4fd1c623"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.5-rc/datree-cli_1.4.5-rc_Linux_x86_64.zip"
    sha256 "939a4a2db429894842bf789537fa46092826faa5343f930727ebdfe2ab06455a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.5-rc/datree-cli_1.4.5-rc_Linux_arm64.zip"
    sha256 "6972e4a826a110bb773abfaf8f3626093ab617944b0a239d7ff4036096073f65"
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
