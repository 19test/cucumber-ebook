# encoding: utf-8
# vim: tabstop=2:softtabstop=2:shiftwidth=2:noexpandtab
Feature: user ...
	Scenario Outline: signin
		Given I visit "/" page
		And an user exists with login "<uname>" and password "<pass>"
		And I fill in "username" with "<uname2>"
		And I fill in "password" with "<pass2>"
		When I press "<action>"
		Then I should see "<result>"

		Examples: başarılı
			| uname | pass   | uname2 | pass2  | action | result  |
			| test  | secret | test   | secret | Login  | success |

		Examples: başarılı
			| uname | pass   | uname2 | pass2   | action | result  |
			| test  | secret | test   | invalid | Login  | failure |
			| test  | secret |        | secret  | Login  | failure |
			| test  | secret |        |         | Login  | failure |
