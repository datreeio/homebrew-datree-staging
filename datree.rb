# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.7-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.7-rc/datree-cli_1.5.7-rc_Darwin_x86_64.zip"
    sha256 "c8fcb21552b99009ec65f4c92200e65575fcb987cc86c1e53b1e5bd2d74035aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.7-rc/datree-cli_1.5.7-rc_Darwin_arm64.zip"
    sha256 "a6971554d474fd38c115afb8f70260210ff3804a161277a285b6d9e37d07437e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.7-rc/datree-cli_1.5.7-rc_Linux_x86_64.zip"
    sha256 "bfe33f89fcfc3bbac612b232d39438913a11ff222233e2e513f6b05d324f85d2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.7-rc/datree-cli_1.5.7-rc_Linux_arm64.zip"
    sha256 "759870f67ab8e95c3a57dbd9ebcae37d742d5ae756ca59346ad4d34e70df9590"
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
