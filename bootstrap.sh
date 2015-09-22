# Add CRAN mirror to apt-get sources
add-apt-repository "deb https://cran.rstudio.com/bin/linux/ubuntu trusty/"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9

# install all of my precious packages
apt-get update && apt-get install --assume-yes --no-install-recommends \
    ca-certificates \
    gdebi-core \
	git \
	graphviz \
    haskell-platform \
    libapache2-mod-proxy-html \
	libcurl4-openssl-dev \
    libghc-pandoc-dev \
    lmodern \
	libxml2-dev \
    nodejs \
    qpdf \
    r-base-dev \
    r-recommended \
    texlive-fonts-recommended \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-luatex \
    texlive-xetex

# Install Pandoc
cabal update && cabal install pandoc
ln -s /root/.cabal/bin/pandoc /usr/local/bin/pandoc

# if RStudio-Server isn't already installed, get RStudio Server
if [ ! -e /usr/sbin/rstudio-server ] 
	then 
		echo "Installing RStudio Server"
		export RSTUDIOVERSION='rstudio-server-0.99.684-amd64.deb'
		wget https://s3.amazonaws.com/rstudio-dailybuilds/$RSTUDIOVERSION
		gdebi --non-interactive $RSTUDIOVERSION
fi
	

# Inform the user what's up
echo "RStudio server is running at http://localhost:4567"
