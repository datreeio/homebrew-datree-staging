# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.22-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.22-rc/datree-cli_1.8.22-rc_Darwin_x86_64.zip"
    sha256 "d73a3c018a1e5926a79de3ea5dc40bf1de5b127797a42adb0b25d4aaa2a31702"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.22-rc/datree-cli_1.8.22-rc_Darwin_arm64.zip"
    sha256 "d5c32d3933aebba2d88e5fa426957c93593119736935cdca80f59c72a24863c3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.22-rc/datree-cli_1.8.22-rc_Linux_x86_64.zip"
    sha256 "2a5776da3a626178adf7b85befa3ab493747c98d9031f5e86fd11e53072ae46a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.22-rc/datree-cli_1.8.22-rc_Linux_arm64.zip"
    sha256 "94faba0c6a17bf001c8f6bdf82c1b83a91d381a0c3915088a501818f5f5a0318"
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
