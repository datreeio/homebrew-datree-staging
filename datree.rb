# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.11-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.11-rc/datree-cli_0.15.11-rc_Darwin_x86_64.zip"
    sha256 "fcd70793836907503ac0b061aa0a72a49a2e7bea32f2bb48e0df4205d916f144"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.11-rc/datree-cli_0.15.11-rc_Linux_x86_64.zip"
    sha256 "0cba576041b6cc5a04e0afb45505ae69182b99eec303e7d90c7d3b23d9b8b259"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.11-rc/datree-cli_0.15.11-rc_Linux_arm64.zip"
    sha256 "cc51dbbf8819192ae88f7c76150df6c156dd12bc957799be1f708212f4eefeed"
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
