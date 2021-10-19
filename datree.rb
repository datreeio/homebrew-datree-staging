# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.5-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.5-staging/datree-cli_0.14.5-staging_Darwin_x86_64.zip"
    sha256 "2d8bd1779a5dd62b102203085249b064348df22869fc6379bab779c02ca60fe2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.5-staging/datree-cli_0.14.5-staging_Linux_x86_64.zip"
    sha256 "99fc48e7e1efbac5ffa7150550852933c3b61362640f09ce8bbdc1ba5c96e79b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.5-staging/datree-cli_0.14.5-staging_Linux_arm64.zip"
    sha256 "0811eb9eaa657a70325f527811a90742b125bbf1eefd657d868b1a0b536f2040"
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
