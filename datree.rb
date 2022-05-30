# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.34-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.34-rc/datree-cli_1.4.34-rc_Darwin_x86_64.zip"
    sha256 "d7950e61ae74d529442df2f9a1982ad583629fc3db1bbe82f4a3b732d26f2bbb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.34-rc/datree-cli_1.4.34-rc_Darwin_arm64.zip"
    sha256 "5691b5a9df449f1f06cd14e003016cb592f54e8abd3876f56395e612e69645ef"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.34-rc/datree-cli_1.4.34-rc_Linux_x86_64.zip"
    sha256 "aabaceea0223016f69ff5f89a69d38841befcb5871104decacb3303f3512f566"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.34-rc/datree-cli_1.4.34-rc_Linux_arm64.zip"
    sha256 "b3a339d271065a16000bae48003892d8f78470d56ee9c91ad32474d64581c238"
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
