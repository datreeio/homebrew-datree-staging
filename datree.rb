# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.20-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.20-rc/datree-cli_1.9.20-rc_Darwin_x86_64.zip"
    sha256 "f3927803db0f8faa8ec67bdce4befed27fcc7f65cc8fb30eeee1b9e3edbf106b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.20-rc/datree-cli_1.9.20-rc_Darwin_arm64.zip"
    sha256 "cb212a3b9a7b1f6e393773526316474641e2819d8720e0e445c5eb6136274cec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.20-rc/datree-cli_1.9.20-rc_Linux_x86_64.zip"
    sha256 "994f5e650ff1691414cde16ca1317ecfb5b1f59c301f8395dcfa129ccf7bb61e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.20-rc/datree-cli_1.9.20-rc_Linux_arm64.zip"
    sha256 "2a9fbb5f2a75a644bfd8be4bf24dd13c43c7fd5c7fd2f355af2fc2ff324e6b77"
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
