# Image Format Converter

## Description

This Bash script converts images from one format to another within a specified directory and its subdirectories. It supports conversion between PNG, JPG, and WEBP formats. The script utilizes the `convert` tool for image conversion.

## Requirements

- Linux environment (tested on Debian 12)
- Bash shell
- ImageMagick (for the `convert` tool)

## Usage

1. Clone or download the script to your local machine.
2. Make the script executable with the command: `chmod +x convert_image_format.sh`.
3. Run the script by executing `./convert_image_format.sh`.
4. Follow the prompts to choose the initial image format and the desired new image format.
5. Enter the directory path containing the images to be converted.
6. The script will convert the images and delete the original files.

## License

This script is licensed under the GNU General Public License v3.0 (GPLv3). You can find a copy of the license [here](https://www.gnu.org/licenses/gpl-3.0.en.html).

