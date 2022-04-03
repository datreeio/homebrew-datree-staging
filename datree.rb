# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.16-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.16-rc/datree-cli_1.1.16-rc_Darwin_x86_64.zip"
    sha256 "d9e8ef2337bff0ad470cb179dcb9cd92e36007a2fa18e4f9aa3c5285aa0ba4fa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.16-rc/datree-cli_1.1.16-rc_Darwin_arm64.zip"
    sha256 "3f636f4db4a8b89a01aa2c948b8091b1ae545f348260d937c00dd0d87033d47f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.16-rc/datree-cli_1.1.16-rc_Linux_x86_64.zip"
    sha256 "07b10b02387f51d54ecebaca2c933a17478a3f37d65373b60f0e73cd3ea8e1f2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.16-rc/datree-cli_1.1.16-rc_Linux_arm64.zip"
    sha256 "3a53e0bdd3197ec1e6836a875f18f0791a40f3be9423adf6bb62193b5f25629f"
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
