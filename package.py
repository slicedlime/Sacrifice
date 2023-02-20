import os.path
import json
import zipfile

def zip(zip_filename, folder, excludes = []):
    with zipfile.ZipFile(zip_filename, 'w', compression=zipfile.ZIP_DEFLATED) as zip:
        # Iterate over all the files in directory
        for folder_name, subfolders, filenames in os.walk(folder):
            for filename in filenames:
                # create complete filepath of file in directory
                file_path = os.path.join(folder_name, filename)
                file = os.path.basename(file_path)
                if file in excludes or file[0] == '.':
                    continue

                relative = os.path.relpath(file_path, folder)
                if relative[0] == '.':
                    continue
                # Add file to zip
                print(f'{relative}')
                zip.write(file_path, relative)

with open('metadata.json', 'r') as file:
    meta = json.load(file)
zip_file = meta['package']
source_folder = meta['source']
excludes = meta.get('excludes', [])

try:
    os.remove(zip_file)
except OSError:
    pass

zip(zip_file, source_folder, excludes)
