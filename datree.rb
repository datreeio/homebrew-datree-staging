# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.40-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.40-rc/datree-cli_1.8.40-rc_Darwin_x86_64.zip"
    sha256 "00e34790c0556fb8198360502ddd81849259f830f63fd972a1754c880c4dab83"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.40-rc/datree-cli_1.8.40-rc_Darwin_arm64.zip"
    sha256 "2572e4a2cbdff56bc1cefb5314103701e2beb7a00a8663ec21ff5a6add579c61"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.40-rc/datree-cli_1.8.40-rc_Linux_x86_64.zip"
    sha256 "bb50ed21131ecb3da2df581a0839429a8bc0face978d9f3da65e4523aaabb799"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.40-rc/datree-cli_1.8.40-rc_Linux_arm64.zip"
    sha256 "224f7c68859fadd711452a8285cda9b2969743ea216c663ec50f93247eddf883"
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
