<div aria-hidden="true"
     aria-labelledby="myModalLabel"
     class="modal fade"
     id="questionFormModal"
     role="dialog"
     style="display: none;"
     tabindex="-1">
    <div class="modal-content">
        <button class="close" data-dismiss="modal" type="button">&times;</button>
        <div class="modal-body" id="questionFormModalBody">
            <a href="mailto:info@russiaeasy.org');" target="_blank">info@russiaeasy.org</a>
        </div>
    </div>
</div>
<script>
    function showQuestionFormModal() {
        try {
            var questionForm = $("#questionFormWrapper");
            var $questionFormModal = $('#questionFormModal');
            var $questionFormModalBody = $("#questionFormModalBody");
            if (questionForm.length
                    && $questionFormModal.length
                    && $questionFormModalBody.length) {

                $questionFormModalBody.html(questionForm.html());
                $questionFormModal.modal('show');
            } else {
                window.open('mailto:info@russiaeasy.org');
            }

        } catch (err) {
            console.log(err);
            window.open('mailto:info@russiaeasy.org');
        }
    }
</script>