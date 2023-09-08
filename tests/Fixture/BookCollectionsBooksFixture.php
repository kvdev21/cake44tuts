<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * ClipCollectionsClipsFixture
 */
class ClipCollectionsClipsFixture extends TestFixture
{
    /**
     * Init method
     *
     * @return void
     */
    public function init(): void
    {
        $this->records = [
            [
                'id' => 1,
                'clip_collection_id' => 1,
                'clip_id' => 1,
                'created_at' => 1688211305,
                'updated_at' => 1688211305,
            ],
        ];
        parent::init();
    }
}
