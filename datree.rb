# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.13.3-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.13.3-staging/datree-cli_0.13.3-staging_Darwin_x86_64.zip"
    sha256 "eba96ed99570f03cc7c63f9f059d436248b0ae098dc14270a6a96f83a7734b5c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.13.3-staging/datree-cli_0.13.3-staging_Linux_x86_64.zip"
    sha256 "c3b60fef51f7003911071f2afdef7b25bc678a7140138af71116374f12431352"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.13.3-staging/datree-cli_0.13.3-staging_Linux_arm64.zip"
    sha256 "322cf634551bf5d9c0574cb822385d46f8ea079dea3489718f2cd1cbdfef98a1"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
