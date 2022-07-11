# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.30-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.30-rc/datree-cli_1.5.30-rc_Darwin_x86_64.zip"
    sha256 "cc6c79c45683ef35fcf7e5a90582be4b2fbc430162ca9a29a860e2edcd9a78d7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.30-rc/datree-cli_1.5.30-rc_Darwin_arm64.zip"
    sha256 "9ed574cd44028b7484e8ed34fa21aefa557c5c47501fbf18a84a006d8dbb70cf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.30-rc/datree-cli_1.5.30-rc_Linux_x86_64.zip"
    sha256 "5f75d20f4bd8c3a9ca8788315c9df1eaca5cca6ad34eeda4e97bb9c5aaacad57"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.30-rc/datree-cli_1.5.30-rc_Linux_arm64.zip"
    sha256 "34759ecfae1622eddf772c5dd0d9b7ad64fdefcd18ca332ac3a3529724df6c2b"
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
