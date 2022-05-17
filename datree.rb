# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.20-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.20-rc/datree-cli_1.4.20-rc_Darwin_x86_64.zip"
    sha256 "a98851c701dba98abf44418c5a30a38ed207bf3b558c470202de0f389fb50335"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.20-rc/datree-cli_1.4.20-rc_Darwin_arm64.zip"
    sha256 "e54142cda70dc5871f035207715e8c03c4843ce979fe65035e4bd287dba556ad"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.20-rc/datree-cli_1.4.20-rc_Linux_x86_64.zip"
    sha256 "9114e527ebec7888ca02ecd414958342e5b113324264bc1e0a4fdea7d34d405e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.20-rc/datree-cli_1.4.20-rc_Linux_arm64.zip"
    sha256 "e27afc45bdb42795ff5697ea866a1b7434b640fb58c171356d1bc5ee277243e1"
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
