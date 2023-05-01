# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.66-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.66-rc/datree-cli_1.8.66-rc_Darwin_x86_64.zip"
    sha256 "47b720acea60d63accd128b3fb92b035021f66529cad9cc235f93dc7962f2af1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.66-rc/datree-cli_1.8.66-rc_Darwin_arm64.zip"
    sha256 "066c93d443c798e7a6459b4db684e71820ff794472f4218291a5dbf1aa1eafb5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.66-rc/datree-cli_1.8.66-rc_Linux_x86_64.zip"
    sha256 "8b443d5861bb611f71fc708654711ddc7c94e49609d65c31692df76a0ad59a2f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.66-rc/datree-cli_1.8.66-rc_Linux_arm64.zip"
    sha256 "793708be85acb6d9a4cff9173b6af9db5321c3fe3f7d5a2d70c282754d00d1ee"
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
