import os

# Define the base URL for the submodules
base_url = 'https://github.com/lhelal1/'

# Define the paths of the folders to create and turn into submodules
folders = [
    'LH',
    'LH/dev/coding/bash',
    'LH/dev/coding/cpp',
    'LH/dev/coding/docker',
    'LH/dev/coding/fortran',
    'LH/dev/coding/frameworks',
    'LH/dev/coding/html',
    'LH/dev/coding/java',
    'LH/dev/coding/js',
    'LH/dev/coding/julia',
    'LH/dev/coding/linux',
    'LH/dev/coding/macos',
    'LH/dev/coding/markdown',
    'LH/dev/coding/matlab',
    'LH/dev/coding/octave',
    'LH/dev/coding/py',
    'LH/dev/coding/r',
    'LH/dev/coding/ruby',
    'LH/dev/coding/sass',
    'LH/dev/coding/www',
    'LH/dev/coding/xml',
    'LH/dev/teaching'
]

# Create the folders and turn them into submodules
for folder in folders:
    # Create the folder
    os.makedirs(folder, exist_ok=True)
    
    # Get the repository URL for the submodule
    repository_url = base_url + folder.replace('/', '-') + '.git'
    
    # Initialize the submodule
    os.system('git submodule add {} {}'.format(repository_url, folder))
    
# Commit the changes
os.system('git add .')
os.system('git commit -m "Added submodules"')
os.system('git push')
