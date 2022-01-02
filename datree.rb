# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.88-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.88-rc/datree-cli_0.14.88-rc_Darwin_x86_64.zip"
    sha256 "1ebd41049f887862f5ebd99b07fd01ad0e6af13bc0de995b7db3071c997290c9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.88-rc/datree-cli_0.14.88-rc_Linux_x86_64.zip"
    sha256 "d33cb3e88c7f90b0d42ea749a5005483253fa79387ff1a125e074d3b12501ac7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.88-rc/datree-cli_0.14.88-rc_Linux_arm64.zip"
    sha256 "d43ae2969517d958053cf8292a73166ef5409b11039e173d913632a88158a7eb"
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
