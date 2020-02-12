<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Student;

/**
 * StudentSearch represents the model behind the search form of `app\models\Student`.
 */
class StudentSearch extends Student
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'start_date', 'payment', 'group_id'], 'integer'],
            [['first_name', 'last_name', 'middle_name', 'address', 'phone_number', 'photo'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params, $condition)
    {
        $query = Student::find()->with('marks')->where($condition);


        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'start_date' => $this->start_date,
            'payment' => $this->payment,
            'group_id' => $this->group_id,
        ]);
        if ($this->first_name)
        $query->orFilterWhere(['like', 'first_name', $this->first_name])
            ->orFilterWhere(['like', 'last_name', $this->first_name])
            ->orFilterWhere(['like', 'middle_name', $this->first_name])
            ->andFilterWhere(['like', 'address', $this->address])
            ->andFilterWhere(['like', 'phone_number', $this->phone_number])
            ->andFilterWhere(['like', 'photo', $this->photo]);

        return $dataProvider;
    }
}
