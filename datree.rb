# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.7-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.7-rc/datree-cli_1.2.7-rc_Darwin_x86_64.zip"
    sha256 "5825f7ecc228abdb2c5bc284ee8b88c55b45a73c2fd65d5facbe6dfca15834cd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.7-rc/datree-cli_1.2.7-rc_Darwin_arm64.zip"
    sha256 "a9c526b1c7834a5575a22973c19f096f7b4e87a2f629548a7bb799f6d3762935"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.7-rc/datree-cli_1.2.7-rc_Linux_x86_64.zip"
    sha256 "9d89ef9d92cf19c40e6922a413a87a8a4f871cf02c7a6a06472325b3c8c9b51a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.7-rc/datree-cli_1.2.7-rc_Linux_arm64.zip"
    sha256 "83ce6a5b1c080e9d529af35ce6963bfd1682bdec86b78724a14c888e8f62675a"
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
