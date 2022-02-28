# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.29-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.29-rc/datree-cli_0.15.29-rc_Darwin_x86_64.zip"
    sha256 "7ad84afca99fffc09cbe7e1ce6b97de24e6726028bd965747e74018312c7e5f5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.29-rc/datree-cli_0.15.29-rc_Darwin_arm64.zip"
    sha256 "00539d2286856c779a9bc23d9d4659166e7316a1a28f359d59efaddebe671445"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.29-rc/datree-cli_0.15.29-rc_Linux_x86_64.zip"
    sha256 "b12eb13af2d6655ebdee19f5b32224c89029d6482e280ef88d2f30841ff8b479"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.29-rc/datree-cli_0.15.29-rc_Linux_arm64.zip"
    sha256 "85184313393ecc4d883097b03f499041d8aa7bcbe5b4587d4164bd880d19fe65"
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
