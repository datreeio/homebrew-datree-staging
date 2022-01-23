# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.9-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.9-rc/datree-cli_0.15.9-rc_Darwin_x86_64.zip"
    sha256 "1e98255d029af6bfa363cfc70ab807063cb0f76ff1cbccf7265cdd28bb33b5f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.9-rc/datree-cli_0.15.9-rc_Linux_x86_64.zip"
    sha256 "725728e541d07210d3af27dc04c1735f3f07fbfae9d9e58e6616ccffb8b0f1df"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.9-rc/datree-cli_0.15.9-rc_Linux_arm64.zip"
    sha256 "063eae020ac93518c2fbb12e1a73b81b001cbe3056f08f553fa9bdeba98c25ca"
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
