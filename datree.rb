# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.54-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.54-rc/datree-cli_0.14.54-rc_Darwin_x86_64.zip"
    sha256 "3520ce7f53f273132cd1a277d6dc46d0aaa773d9c55ccfba080a4c0a8b50a4df"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.54-rc/datree-cli_0.14.54-rc_Linux_x86_64.zip"
    sha256 "5e43cc4484e16951524cc484ee666f4136fd41740b39ce40af6e3d6fefb17689"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.54-rc/datree-cli_0.14.54-rc_Linux_arm64.zip"
    sha256 "85b30483fe44bacd894ef7b62d0dd3e01f2ab6003acf2bc8dcaf87abbb94637d"
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
