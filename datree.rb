# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.25-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.25-rc/datree-cli_1.4.25-rc_Darwin_x86_64.zip"
    sha256 "f9ca6ea7133ceacddc991bc2d34854da6af624f518328a40af552873494b53c2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.25-rc/datree-cli_1.4.25-rc_Darwin_arm64.zip"
    sha256 "14782b5ce792ec23c1684aba809a330478e305e1ef286d4d7513641074bffa08"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.25-rc/datree-cli_1.4.25-rc_Linux_x86_64.zip"
    sha256 "d00ba4ef89cf27f55f22036567740d7a5d62182e96f06b454e9f29b03a72e6d0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.25-rc/datree-cli_1.4.25-rc_Linux_arm64.zip"
    sha256 "9badbdd68c63cfd46fc85aca6aa004e166aa6f0ee13e4d58527634ac4a4e6372"
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
