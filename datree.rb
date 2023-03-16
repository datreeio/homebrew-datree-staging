# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.43-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.43-rc/datree-cli_1.8.43-rc_Darwin_x86_64.zip"
    sha256 "2aab744ae0feb63baa52b0c5c169265fb9931d680366ed467aca3d98253f004e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.43-rc/datree-cli_1.8.43-rc_Darwin_arm64.zip"
    sha256 "26821b540d10cfc4d6b8e1dc8092b62b2c261df95e6108d2ed83c7b7ee83ba32"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.43-rc/datree-cli_1.8.43-rc_Linux_x86_64.zip"
    sha256 "cda11478fb71ac17efc064db443417a2cf85c6888108557fb2cf16dd5aee14cb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.43-rc/datree-cli_1.8.43-rc_Linux_arm64.zip"
    sha256 "a3f47fb32a1b6e97704c0e032b797262ed112d4e405ccd5cf7c95a721b0ece4d"
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
