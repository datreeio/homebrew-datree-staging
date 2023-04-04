# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.59-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.59-rc/datree-cli_1.8.59-rc_Darwin_x86_64.zip"
    sha256 "c1702ceda421f380e56fbbbdb45bb72d49456c5debe5f5dff82e1c751f7db18c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.59-rc/datree-cli_1.8.59-rc_Darwin_arm64.zip"
    sha256 "aa5c26a50b47f9fdb3c0f92ba17d8462f2fc40aaf82341d26caeeaa4d7735896"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.59-rc/datree-cli_1.8.59-rc_Linux_x86_64.zip"
    sha256 "39005a30e2f9d48065e9e7535498b495cfaa5b75440305afb8442a9b75e2dc6d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.59-rc/datree-cli_1.8.59-rc_Linux_arm64.zip"
    sha256 "e3b21f402d860b151d87423644e8d2152d3ad5944fdb9e8973dfee9e9316debe"
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
