# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.2-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.2-rc/datree-cli_0.15.2-rc_Darwin_x86_64.zip"
    sha256 "5af7f376ac3bba7898728c8b11b5218072d44cb8504fe28e946d8434e8458977"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.2-rc/datree-cli_0.15.2-rc_Linux_x86_64.zip"
    sha256 "8504955483a20a4353687538275b62761df53247ede2a6f46888ea4b7a483335"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.2-rc/datree-cli_0.15.2-rc_Linux_arm64.zip"
    sha256 "ed96a1671d92cf4e58fd8821d4fc76531e171f9c9c5bf54ff1152fd2f9d42288"
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
