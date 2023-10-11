<?php

namespace Step\Acceptance;

use _generated;
use \Behat\Gherkin\Node\TableNode;

/**
 * Inherited Methods
 * @method void wantToTest( $text )
 * @method void wantTo( $text )
 * @method void execute( $callable )
 * @method void expectTo( $prediction )
 * @method void expect( $prediction )
 * @method void amGoingTo( $argumentation )
 * @method void am( $role )
 * @method void lookForwardTo( $achieveValue )
 * @method void comment( $description )
 * @method void pause()
 *
 * @SuppressWarnings(PHPMD)
 */
class CreatenoteTester extends \Codeception\Actor {
	use _generated\AcceptanceTesterActions;
	/**
	 * @Given I am on the login page
	 */
	public function iAmOnTheLoginPage()
	{
		$this->amOnPage('/user/login');
	}
	/**
	 * @When I enters :arg1 in the :arg2 field
	 */
	public function iEnterInField($value, $field)
	{
		$this->fillField($field, $value);
	}
	/**
	 * @When I clicks the :arg1 button
	 */
	public function iClickTheLoginButton($arg1)
	{
		$this->click($arg1);
	}
	/**
	 * @Then Me be redirected to the dashboard page
	 */
	public function meBeRedirectedToTheDashboardPage()
	{
		// Перевіряємо поточний URL
		$currentUrl = $this->grabFromCurrentUrl();
		$expectedUrl = '/dashboarduser'; // Замініть на URL вашої сторінки "dashboard".

		$this->assertStringContainsString($expectedUrl, $currentUrl);
	}

	/**
	 * @Then Me must see :arg1 on the page
	 */
	public function meMustSeeOnThePage($text)
	{
		$this->see($text);
	}

	/**
	 * @When I click the :arg1 button
	 */
	public function iClickTheCreateNoteButton($arg1)
	{
		$this->click($arg1);
	}

	/**
	 * @When I fill in :arg1 in the :arg2 field
	 */
	public function iFillInInTheField($value, $field)
	{
		$this->fillField($field, $value);
	}

	/**
	 * @When I click the :arg1 button
	 */
	public function iClickTheSaveButton($arg1)
	{
		$this->click($arg1);
	}

}