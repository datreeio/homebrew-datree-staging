# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.28-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.28-rc/datree-cli_0.14.28-rc_Darwin_x86_64.zip"
    sha256 "df7f4114928887bb6788461452392134819aad160a93ffbb616bad58bf0ece31"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.28-rc/datree-cli_0.14.28-rc_Linux_x86_64.zip"
    sha256 "5a0c86391b88d8c3989d03ea39555afd8116a96e19754ad970170c23a6f7f2b4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.28-rc/datree-cli_0.14.28-rc_Linux_arm64.zip"
    sha256 "3e786ecd0329d89ead2902572c6536f4f30890a6717e1d5ef2628f6b8f59e2b9"
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
