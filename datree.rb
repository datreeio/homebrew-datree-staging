# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.86-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.86-rc/datree-cli_0.14.86-rc_Darwin_x86_64.zip"
    sha256 "81c17385a67a018533ad25c1f6667c73f4353370612bdd00b14be218d5e2d42d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.86-rc/datree-cli_0.14.86-rc_Linux_x86_64.zip"
    sha256 "57f6fe0e331e2212c836622c6b435bd1a9cb7c5eb5d18e265280160e38843cfa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.86-rc/datree-cli_0.14.86-rc_Linux_arm64.zip"
    sha256 "76b84094707dcef0122a7ab9d249f1e5aa42d323c746913d28e33990ae3a4394"
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
