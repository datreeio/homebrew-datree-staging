# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.13-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.13-rc/datree-cli_0.16.13-rc_Darwin_x86_64.zip"
    sha256 "bd987998f4d964bcf9c10bf9895e94d5a551d2a1c2162526ed1a39fcb71156bb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.13-rc/datree-cli_0.16.13-rc_Darwin_arm64.zip"
    sha256 "88dfb61e2564f207533f0fa298cf535baca29cb2c39aa2980c64c8cdbedcfc82"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.13-rc/datree-cli_0.16.13-rc_Linux_x86_64.zip"
    sha256 "5f75e03d5afe4ff84153477dd586e0c36ae74de0375916c151aee7136b99ab92"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.13-rc/datree-cli_0.16.13-rc_Linux_arm64.zip"
    sha256 "4eafe2f1eb54bb23cc33f8c80aab4c4a40736eb3c3508f6262f193c9d969d395"
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
      tput init
    EOS
  end
end
