# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.35-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.35-rc/datree-cli_1.5.35-rc_Darwin_x86_64.zip"
    sha256 "ab09a8bb5e0039b8a930d0a4e00d217d20f5d969d0a1c1ca4d5dfdc12d04162f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.35-rc/datree-cli_1.5.35-rc_Darwin_arm64.zip"
    sha256 "45b33b8e75f50252ab9bff0c20db98919d01950bb772ea72376a67d5260072dc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.35-rc/datree-cli_1.5.35-rc_Linux_x86_64.zip"
    sha256 "d0110c67c77760f9a2d4eeb201f193042a411734aeb0d18f4bf5c76d9eac3c65"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.35-rc/datree-cli_1.5.35-rc_Linux_arm64.zip"
    sha256 "88d76662f51c43ccc7eb7873a2a8d0b11fb35754562d37db11ae92d10ce67631"
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
