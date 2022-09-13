# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.22-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.22-rc/datree-cli_1.6.22-rc_Darwin_x86_64.zip"
    sha256 "21ec0106ded565913c724607ad3472b951651c2e1acbaf9e14d9a2d48b88d870"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.22-rc/datree-cli_1.6.22-rc_Darwin_arm64.zip"
    sha256 "03f1116daca7fc228e9fba3dd326fb1b5fd4d28e39731cad56e304c976691e07"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.22-rc/datree-cli_1.6.22-rc_Linux_x86_64.zip"
    sha256 "ddd0a7a4ff1a908e9575e42230b0a15ce7686e76919d28f3ef319ac63bb94a5b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.22-rc/datree-cli_1.6.22-rc_Linux_arm64.zip"
    sha256 "e5746d483870bbac9eef37759b03055a91d2409bfea3ce72fb6ed37f794b2647"
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
