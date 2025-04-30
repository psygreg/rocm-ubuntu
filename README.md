# rocm-ubuntu
### Automated installation for ROCm and OpenCL for AMD RDNA 2/3 cards on Ubuntu (and flavours).

It goes without saying this will not work for any Nvidia or Intel cards, nor AMD cards outside the two generations covered by my script.

## Supported Ubuntu versions

Currently, I can only guarantee this script to work on Ubuntu **24.04 LTS** and Ubuntu **25.04**. I'll maintain it for the latest and latest LTS versions. It does work for any official [Ubuntu flavours](https://ubuntu.com/desktop/flavours) as well in the same versions. 

## Known to be working cards (already tested)
- RX 6750 XT
- RX 6700 XT
- RX 7900 GRE
- RX 7900 XT
- RX 7900 XTX

## Usage

`git clone https://github.com/psygreg/rocm-ubuntu.git`\
`cd rocm-ubuntu`\
`chmod +x install.sh`\
`./install.sh`

You can delete the "rocm-ubuntu" folder once it's completed.
