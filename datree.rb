# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.69-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.69-rc/datree-cli_1.8.69-rc_Darwin_x86_64.zip"
    sha256 "fa3e30e571a5e87832fe7814c54f8798b8e5d67568a9b189fc7962b511e0aa76"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.69-rc/datree-cli_1.8.69-rc_Darwin_arm64.zip"
    sha256 "6c96eb0169111ec65226373faa8202971655ef4b4b6a92b676e3ecb771cd03e3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.69-rc/datree-cli_1.8.69-rc_Linux_x86_64.zip"
    sha256 "86196e5ed1efa3cbc4128b83f252c868650ee9d4d264f4de387271a7ea633eb5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.69-rc/datree-cli_1.8.69-rc_Linux_arm64.zip"
    sha256 "6327ce4c26beb4af08d4f32b352b427ad266581b1186621be351e5559e41de5e"
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
