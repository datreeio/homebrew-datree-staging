# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.69-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.69-rc/datree-cli_0.14.69-rc_Darwin_x86_64.zip"
    sha256 "6870cb147aafae01638ed7f8b188484887a90581424eb53ed654e4218217fc89"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.69-rc/datree-cli_0.14.69-rc_Linux_x86_64.zip"
    sha256 "b2a0c6e0570056f5e2965d3e3e260a20f9440c5113ee448ae3c164a705695ba0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.69-rc/datree-cli_0.14.69-rc_Linux_arm64.zip"
    sha256 "b1cde40cec2324b5c12ec47ca365eaacd45f297e51ebed28d1e0aa7e66188ada"
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
