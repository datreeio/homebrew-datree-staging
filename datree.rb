# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.19-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.19-rc/datree-cli_1.4.19-rc_Darwin_x86_64.zip"
    sha256 "0909ceb1b02dc1d83607774f6335118237ec89d08130c2b0c1f6f6ee50f0ecb0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.19-rc/datree-cli_1.4.19-rc_Darwin_arm64.zip"
    sha256 "e547aef2da118b288528664b118ef5b23f2f007aa4ab237f22181372a1676606"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.19-rc/datree-cli_1.4.19-rc_Linux_x86_64.zip"
    sha256 "7d551c1946dbe3b026e1b6084be9fbcb3a608c00c9de4248f6d06034ec00bbf5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.19-rc/datree-cli_1.4.19-rc_Linux_arm64.zip"
    sha256 "f7c12787819d15ad2cb6ba96c9e0bd0445f998fee432d2769e12132a59caad3e"
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
