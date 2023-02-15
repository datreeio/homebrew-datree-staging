# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.23-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.23-rc/datree-cli_1.8.23-rc_Darwin_x86_64.zip"
    sha256 "a1fdc48b6d01a9f23233ea2cdfa88769abac21f2d833c15269105deeaa668c4c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.23-rc/datree-cli_1.8.23-rc_Darwin_arm64.zip"
    sha256 "348f71af24413678a0b852c3a2667a54a353ec2a505e2fab924b0705bc16bd23"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.23-rc/datree-cli_1.8.23-rc_Linux_x86_64.zip"
    sha256 "32f5100b152f0b41cd3e461dce2cfab59a11cbba35739209c8d5be65f0ddc184"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.23-rc/datree-cli_1.8.23-rc_Linux_arm64.zip"
    sha256 "6b94dbec9ac082a54a5c9fbf8bba39554ae04de07eac2903fcdb7da6fbccc667"
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
