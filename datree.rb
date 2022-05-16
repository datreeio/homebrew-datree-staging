# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.18-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.18-rc/datree-cli_1.4.18-rc_Darwin_x86_64.zip"
    sha256 "d92ff5c4a7a9feecea71a602e77cd5d1cc8efbfbe4316aa300d3c8fe7324dd80"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.18-rc/datree-cli_1.4.18-rc_Darwin_arm64.zip"
    sha256 "c3ed4a21d817ee72885408e5802b236cbd160d7f1818fe6f532a61727f8dc658"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.18-rc/datree-cli_1.4.18-rc_Linux_x86_64.zip"
    sha256 "ed0897596888edd136aff5568fed59498f16d94281ac730175d61b28062b2b36"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.18-rc/datree-cli_1.4.18-rc_Linux_arm64.zip"
    sha256 "7626acdc56af0a33b78478e4742d33297544dfd5bf817b4cfd607ba6ff048dce"
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
