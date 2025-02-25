import ballerina/http;
import ballerinax/github;

final http:Client httpClient = check new (clientURL);
final github:Client githubClient = check new ({auth: {token: ""}});
