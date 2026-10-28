cargo build --release

rm -rf bin
mkdir bin
ln -s ../target/release/panacus bin/panacus
ln -s ../scripts/panacus-visualize.py bin/panacus-visualize

# install the Python libraries necessary for panacus-visualize
source .python_venv/bin/activate
pip install matplotlib numpy pandas scikit-learn scipy seaborn

# suggestion: add tool to path in your ~/.bashrc
#export PATH="$(readlink -f bin)":$PATH

# you are ready to go!
panacus --help