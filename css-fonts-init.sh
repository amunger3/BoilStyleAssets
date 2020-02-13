#!/bin/bash

echo "Assuming at project root...";
echo "creating /css directory and downloading font files..."



mkdir css && mkdir css/fonts && mkdir css/markdown;
cd ./css/fonts;
http --download https://software.sil.org/downloads/r/charis/CharisSIL-5.000-web.zip;
http --download https://github.com/rsms/inter/releases/download/v3.12/Inter-3.12.zip;
git clone https://github.com/tonsky/FiraCode.git;
unzip CharisSIL-5.000-web.zip && unzip Inter-3.12.zip;

echo "getting UIKit...";
cd .. && git clone git://github.com/uikit/uikit.git;
