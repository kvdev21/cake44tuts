<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\ClipCollection $clipCollection
 * @var \Cake\Collection\CollectionInterface|string[] $screenCollections
 * @var \Cake\Collection\CollectionInterface|string[] $clips
 * @var int[] $screenCollectionsScreenCount
 */

echo $this->Html->css([
    'add_clip_collection',
    'jquery-ui',
]);
echo $this->Html->script([
    'jquery-3.6.0',
    'jquery-ui',
    '/plugins/jquery-validation/jquery.validate.1.19.3.min',
    'custom',
    'add_clip_collection',
]);
?>
<div class="row">
    <aside class="column">
        <div class="side-nav">
            <h4 class="heading"><?= __('Actions') ?></h4>
            <?= $this->Html->link(__('List Clip Collections'), ['action' => 'index'], ['class' => 'side-nav-item']) ?>
        </div>
    </aside>
    <div class="column-responsive column-80">
        <div >
            <?= $this->Form->create($clipCollection, ['id' => 'add_clip_collection_form', 'enctype' => 'multipart/form-data']) ?>
            <fieldset>
                <legend><?= __('Add Clip Collection') ?></legend>
                <ul class="step-app ui-accordion-container" id="add_clip_collection_steps">
                    <li id="step_1">
                        <a href='#' class="ui-accordion-link"></a>
                        <div>
                            <?php
                            echo $this->Form->control('name', ['class' => 'pageRequired']);
                            // echo $this->Form->control('screen_collection_id', ['class' => 'pageRequired', 'options' => $screenCollections, 'style' => 'height: 100px;', 'empty' => 'Select Clip', 'required' => true]);

                            echo $this->Form->select('screen_collection_id', $screenCollections, [
                                'empty' => 'Select Screen',
                                'style' => 'height:120px',
                                'class' => 'pageRequired',
                                'size' => 8,
                                'required' => true,
                                'id' => 'screen-collection-id'
                            ]);

                            echo $this->Form->button(__('Next'), ['class' => 'step_button', 'data-page-id' => '0', 'data-next-page-id' => '1', 'type' => 'button', 'data-step-action' => 'next']);
                            ?>
                        </div>
                    </li>
                    <li id="step_2">
                        <a href='#' class="ui-accordion-link"></a>
                        <div>
                            <div id="image_container"><div class="row"></div></div>
                            <div id="video_file_not_selected_error" class="custom_error">Select a video file (mp4) less than <?php echo ini_get('upload_max_filesize') ?> filesize</div>
                            <div id="video_container"></div>
                            <div id="file_upload_container"></div>
                            <?php
                            echo $this->Form->button(__('Previous'), ['class' => 'step_button', 'data-page-id' => '1', 'data-next-page-id' => '0', 'type' => 'button', 'data-step-action' => 'next']);
                            echo $this->Form->button(__('Next'), ['class' => 'step_button', 'data-page-id' => '1', 'data-next-page-id' => '2', 'type' => 'button', 'data-step-action' => 'next']);
                            ?>
                        </div>
                    </li>
                    <li id="step_3">
                        <a href='#' class="ui-accordion-link"></a>
                        <div>
                            <div id="final_image_space"><div class="row"></div></div>
                            <?php
                            echo $this->Form->control('start_date', ['value' => date('Y-m-d'), 'class' => 'pageRequired']);
                            echo $this->Form->control('end_date', ['value' => date('Y-m-d'), 'class' => 'pageRequired']);
                            echo $this->Form->button(__('Previous'), ['class' => 'step_button', 'data-page-id' => '2', 'data-next-page-id' => '1', 'type' => 'button', 'data-step-action' => 'next']);
                            echo $this->Form->input(__('Submit'), ['type' => 'submit', 'class' => 'step-btn', 'data-step-action' => 'finish']);
                            ?>
                        </div>
                    </li>
                </ul>
            </fieldset>
            <?= $this->Form->end() ?>
        </div>
    </div>
</div>
<div style="display: none" id="each_image_container">
    <div class="each_image">
        <?php echo $this->Html->image('no_image.jpg', ['fullBase' => true, 'id' => 'image_tag_id_placeholder']); ?>
    </div>
</div>
<div style="display: none" id="each_video_container">
    <div class="each_video">
        <video id="video_tag_id_placeholder" src="" controls></video>
    </div>
</div>
<div style="display: none" id="each_file_upload_container">
    <div class="each_file">
        <?php echo $this->Form->control('video_name_placeholder', ['label' => 'video_label_placeholder', 'type' => 'file', 'accept' => 'video/mp4', 'id' => 'video_id_placeholder', 'class' => 'video_input_field pageRequired', 'required' => true]); ?>
        <?php echo $this->Form->control('image_name_placeholder', ['type' => 'hidden', 'class' => 'thumbnail_input', 'id' => 'image_id_placeholder', 'required' => true]); ?>
        Max upload size: <?php echo ini_get('upload_max_filesize') ?><br />
        <div class="custom_error"></div>
    </div>
</div>
<input type="hidden" id="no_image_src" value="/img/no_image.jpg"/>
<script>
   let screenCountPerScreen = <?php echo $screenCollectionsScreenCount ? json_encode($screenCollectionsScreenCount) : '{}'?>;
    let maxFileSizeInMB = '<?php echo ini_get('upload_max_filesize') ?>';
    let maxFileSizeInBytes = <?php echo intval(ini_get('upload_max_filesize'))*1024*1024 ?>;
    let supportedVideoTypes = ['video/mp4'];
</script>
