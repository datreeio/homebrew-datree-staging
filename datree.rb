# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.11-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.11-rc/datree-cli_1.0.11-rc_Darwin_x86_64.zip"
    sha256 "608cdcc5135ed30b79a1bd5a93822178b8a301d50614802d985ece50cce63ff6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.11-rc/datree-cli_1.0.11-rc_Darwin_arm64.zip"
    sha256 "aa8d6947bdb081c003eb6bdc7eb228a0bc8e648280307f6b9a8cc76c94f01432"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.11-rc/datree-cli_1.0.11-rc_Linux_x86_64.zip"
    sha256 "da308304dd25dc3c485dfd37db2fdbd2deeecf472c2f57f35c27b6e8ba5f7afc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.11-rc/datree-cli_1.0.11-rc_Linux_arm64.zip"
    sha256 "8bd68bdd15ef729dfec106f63bcc6268f759c892b663064b27d2335fb5a8042b"
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
