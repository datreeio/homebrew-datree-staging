# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.27-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.27-rc/datree-cli_1.6.27-rc_Darwin_x86_64.zip"
    sha256 "b7d43153405adba3b498a578e16c608fc29778f2c8b4c960b2bfd4e1195dcbfd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.27-rc/datree-cli_1.6.27-rc_Darwin_arm64.zip"
    sha256 "2a3dbc47a1d94727f1cce118b98389989a935b5a7aa25e82576a5a032fb00629"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.27-rc/datree-cli_1.6.27-rc_Linux_x86_64.zip"
    sha256 "082e0d82cca2c6b586ea12d6e4367017a0b0d8db0bc2bf8ee1c00c42b884079d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.27-rc/datree-cli_1.6.27-rc_Linux_arm64.zip"
    sha256 "8f3166db3dd3977721dd38eae928ec03e2a5ebc3bb29bc10b5e4fa93a677198b"
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
