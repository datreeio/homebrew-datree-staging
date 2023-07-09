# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.13-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.13-rc/datree-cli_1.9.13-rc_Darwin_x86_64.zip"
    sha256 "462422c29d531699b864a25ff1622db4e5556c1e42574b5358f439fb75a90577"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.13-rc/datree-cli_1.9.13-rc_Darwin_arm64.zip"
    sha256 "2a727a354d55de781d06b217aa791e6c2d996d492bd3c1ac5df29e1818a51bd8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.13-rc/datree-cli_1.9.13-rc_Linux_x86_64.zip"
    sha256 "3cd66c2ae9bdacfec349c0775d5af6f8d69b400eb802954c7ad275e7f9e40ae2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.13-rc/datree-cli_1.9.13-rc_Linux_arm64.zip"
    sha256 "3da1c9af8b7ae750c1c6d4eaaee6694a6794e5ce4380bb42973d63f7feadd798"
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
