# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.24-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.24-rc/datree-cli_1.4.24-rc_Darwin_x86_64.zip"
    sha256 "a205867ad66fa92ac1237743dd0ba18d40fcb163f479ad055ae1a4cbb53d23dd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.24-rc/datree-cli_1.4.24-rc_Darwin_arm64.zip"
    sha256 "223668a0ee63a864e2f39749ecfeb0ae2499e057b9622280d0d7c5680fc379f4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.24-rc/datree-cli_1.4.24-rc_Linux_x86_64.zip"
    sha256 "7bdc60f8b6d7ba3b4894a8180a91e3c23395168b4ea4960ae094b69ffe1a01d7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.24-rc/datree-cli_1.4.24-rc_Linux_arm64.zip"
    sha256 "cc381211d467ece8d396ba9ccc7325ef542803dc24bcd4702137717823295b12"
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
