@github_api_test
Feature: GitHub API Demo

  Scenario: Fetch my GitHub public profile
    And compose a get request to "https://api.github.com/users/octocat" with headers
      | Accept | application/vnd.github+json |
    And execute and save the response as "profileResponse"
    And check that response {profileResponse} has "200" as status code
    And check that API response {profileResponse} contains "octocat" at "$.login"
    And check that API response {profileResponse} contains "The Octocat" at "$.name"

    #Authorization to be added in header
  Scenario: Fetch my GitHub user details using JWT Token
    And compose a get request to "https://api.github.com/user" with headers
      | Accept        | application/vnd.github+json |
    And execute and save the response as "userProfile"
    And check that response {userProfile} has "200" as status code
    And check that API response {userProfile} contains "80874758" at "$.id"

    #Authorization to be added in header
  Scenario: Create a public repo
    And compose a post request to "https://api.github.com/user/repos" with headers
      | Accept        | application/vnd.github+json |
    And with the below JSON request
  """
  {
    "name": "demo-repo",
    "description": "Created via Nimble API test",
    "private": false
  }
  """
    And execute and save the response as "createRepoResponse"
    And check that response {createRepoResponse} has "201" as status code
    And check that API response [createRepoResponse} contains "demo-repo" at "$.name"

    #Authorization to be added in header
  Scenario: Verify GitHub repo exists
    And compose a get request to "https://api.github.com/repos/guptaami-commits/demo-repo" with headers
      | Accept        | application/vnd.github+json |
    And execute and save the response as "repoCheckResponse"
    And check that response {repoCheckResponse} has "200" as status code
    And check that API response {repoCheckResponse} contains "demo-repo" at "$.name"

    #Authorization to be added in header
  Scenario: Delete the repo
    And compose a delete request to "https://api.github.com/repos/guptaami-commits/demo-repo" with headers
      | Accept        | application/vnd.github+json               |
    And execute and save the response as "deleteResponse"
    And check that response {deleteResponse} has "204" as status code