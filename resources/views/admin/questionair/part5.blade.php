<form class="form-horizontal">
    <fieldset id="5.1">
        <legend>5.1 เงินทุนที่ท่านใช้เลี้ยงโคเนื้อ</legend>
        <question-multi-checkbox :model.sync="newFarmer.budget_sources"
                                 :options.sync="options.budget_sources">

        </question-multi-checkbox>

    </fieldset>
    <fieldset id="5.2">
        <legend>5.2 แหล่งเงินทุนกู้ยืม</legend>
        <div class="form-group">
            <div class="col-sm-3">
            </div>
            <div class="col-sm-9">
                <label class="checkbox" v-for="option in options.loan_types">
                    <input type="checkbox" v-model="newFarmer.loan_types" v-bind:value="option">
                    @{{ option.choice }}:
                    <input v-if="option.choice=='เงินกู้จากธนาคารพาณิชย์(ระบุธนาคาร)'" placeholder="ชื่อธนาคาร" type="text" class="form-control"
                           v-model="option['pivot']['remark']">
                    <input placeholder="จำนวนเงิน(บาท)" type="text" class="form-control"
                           v-model="option['pivot']['amount']">
                    <input placeholder="อัตราดอกเบี้ย(%)" type="text" class="form-control"
                           v-model="option['pivot']['rate']">
                </label>
            </div>
        </div>
    </fieldset>
    <fieldset id="5.3">
        <legend>5.3 เงินทุนในการเลี้ยงโคเนื้อรวมทั้งหมด (บาท) (รวมจาก 5.1 และ 5.2)</legend>
        <input type="text" v-model="newFarmer.total_budjet" class="form-control"
               readonly>
    </fieldset>
</form>