<?php

use yii\db\Migration;

/**
 * Class m190811_190611_init_rbac
 */
class m190811_190611_init_rbac extends Migration
{
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {
        $auth = Yii::$app->authManager;

        $rule = new \app\rbac\UserGroupRule;
        $auth->add($rule);

        $teacher = $auth->createRole('teacher');
        $teacher->ruleName = $rule->name;
        $auth->add($teacher);
        // ... add permissions as children of $teacher ...

        $admin = $auth->createRole('admin');
        $admin->ruleName = $rule->name;
        $auth->add($admin);
        $auth->addChild($admin, $teacher);
    }

    public function down()
    {
        $auth = Yii::$app->authManager;

        $auth->removeAll();
    }
}
