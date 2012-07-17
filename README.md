Goblin the Helper
=================

Small tool to help create a folder structure for my projects

Default directory structure:

*/app
  **/controllers - Contains the controllers that handle requests sent to an application
  **/models - Contains the models for accessing and storing data in a database
  **/views - Contains the views and layouts that are rendered by an application and sent as a response to the client
    ***/layouts

  **/client
    ***/controllers
    ***/models
    ***/views

  **/helpers
  **/mailers

*/public - Static files and compiled assets served by the application
  **/images - image files
  **/javascripts - client side javascript
  **/stylesheets - style sheets

*/config - Configuration for the application, including routes, databases, etc
  **/environments - Environment-specific configuration
  **/initinitializer - Initialization code that is require()'d before the applications starts
  **/locale

*/test - unit-test for application

*/spec - specifications for BDD tests
  **/models
  **/acceptance

*/vendor - 3rd party libraries
  **/javascripts
  **/stylesheets

*/lib - custom classes/functions/modules