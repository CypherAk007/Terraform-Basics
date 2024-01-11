## Terraform Basics
- git log --oneline (to get the commit hash that you wish to revert)
- git checkout <commit-hash>
- git revert <commit-hash> (this will give you a new commit hash with “Revert” - word in the beginning of the message)
- git branch <new-branch-name> <new-commit-hash>
- git push origin <new-branch-name>

- https://medium.com/@sharath.ravi/how-to-revert-a-git-commit-from-a-remote-repository-easy-step-by-step-tutorial-358f4a72fa1d

## Access aws cred access and secret key
- cat ~/.aws/credentials

