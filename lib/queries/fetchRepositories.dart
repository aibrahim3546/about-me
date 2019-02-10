String readRepositories = """
  query ReadRepositories {
    viewer {
      repositories(first: 50, ownerAffiliations: OWNER) {
        nodes {
          name,
          stargazers{
            totalCount
          }
        }
      }
    }
  }
"""
    .replaceAll('\n', ' ');
