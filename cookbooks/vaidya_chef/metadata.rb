maintainer       "Vaidya"
maintainer_email "vvaidyanathan@ctepl.com"
license          "All rights reserved"
description      "Installs/Configures vaidya_chef"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

depends "rs_utils"

recipe "vaidya_chef::default", "Prints a message to the output"
