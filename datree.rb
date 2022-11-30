# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.7-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.7-rc/datree-cli_1.8.7-rc_Darwin_x86_64.zip"
    sha256 "efad751261e03bfacd8a3281a86591e8dac157748b865ed5a5ec93da4240cd0f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.7-rc/datree-cli_1.8.7-rc_Darwin_arm64.zip"
    sha256 "102513c61022e4e17ede90d36471ec4f475a710d7570bd7e8544db87c89d8c19"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.7-rc/datree-cli_1.8.7-rc_Linux_x86_64.zip"
    sha256 "fc1269f8b37558ff840ac4adde02ae699c5a78a3e3febd332abee9aadca95561"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.7-rc/datree-cli_1.8.7-rc_Linux_arm64.zip"
    sha256 "4c4c3f9340284207ca9e4d44fccc8b2bb0fe5142ba195af669227bb8b8b98227"
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
