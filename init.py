"""
Script to download and update Git repositories from given URLs.

This script downloads Git repositories from the specified URLs and updates them if they already exist in the provided base directory.
It utilizes the GitPython library to interact with Git repositories programmatically.

Functions:
    download_repos(repos, base_dir): Downloads and updates Git repositories.
        Args:
            repos (list): List of Git repository URLs to download/update.
            base_dir (str): Base directory where repositories will be downloaded.
        Returns:
            None

Example:
    if __name__ == "__main__":
        repositories = [
            'git@github.com:username/repository.git'
        ]
        base_directory = os.getcwd()
        download_repos(repositories, base_directory)
"""
import os
from git import Repo, GitCommandError

def download_repos(repos, base_dir):
    services_dir = os.path.join(base_dir, 'services')
    os.makedirs(services_dir, exist_ok=True)

    current_dir = os.getcwd() 
    os.chdir(services_dir)
    for repo_url in repos:
        repo_name = repo_url.split('/')[-1].split('.')[0]
        try:
            if os.path.exists(repo_name):
                print(f"The repository '{repo_name}' already exists, updating...")
                repo = Repo(repo_name)
                origin = repo.remote('origin')
                origin.pull()
            else:
                print(f"Downloading the repository '{repo_name}'...")
                Repo.clone_from(repo_url, repo_name)
                print(f"Repository '{repo_name}' downloaded successfully.")
        except GitCommandError as e:
            print(f"Error downloading/updating the repository '{repo_name}': {e}")
            continue
    os.chdir(current_dir)

if __name__ == "__main__":
    repositories = [
        'git@github.com:arithgrey/service-store.git'
    ]

    base_directory = os.getcwd()

    download_repos(repositories, base_directory)
