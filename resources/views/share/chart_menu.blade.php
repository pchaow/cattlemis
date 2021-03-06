<div class="panel-group">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#collapse1">ส่วนที่ 1 ข้อมูลพื้นฐานของเกษตรกร</a>
            </h4>
        </div>
        <div id="collapse1" class="panel-collapse collapse in">
            <div class="panel-body">
                <li><a href="{{url($PREFIX."/charts/pie/เพศ/sex")}}">เพศ</a></li>
                <li><a href="{{url($PREFIX."/charts/range-farmowner/อายุ/age/15/70/8")}}">อายุ</a></li>
                <li><a href="{{url($PREFIX."/charts/normal/การศึกษา/education")}}">การศึกษา</a></li>
                <li><a href="{{url($PREFIX."/charts/gmap/ที่ตั้งฟาร์มของเกษตรกร")}}">ที่ตั้งฟาร์มของเกษตรกร</a></li>
                <li><a href="{{url($PREFIX."/charts/pie/อาชีพการเลี้ยงโคเนื้อ(อาชีพหลัก-เสริม)/cattle_job")}}">อาชีพการเลี้ยงโคเนื้อ(อาชีพหลัก-เสริม)</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/normal/เฉลี่ยรายได้รวมของครอบครัว/income_range")}}">เฉลี่ยรายได้รวมของครอบครัว</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/normal/รายได้จากการประกอบอาชีพของเกษตรกร/jobtypes")}}">รายได้จากการประกอบอาชีพของเกษตรกร</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/range-farmowner/รายได้เฉลี่ยต่อปีของการขายโคเนื้อ/avg_cattle_income/50000/200000/3?withNull=true&nullText=ยังไม่ได้ขาย")}}">รายได้เฉลี่ยต่อปีของการขายโคเนื้อ</a>
                </li>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#collapse2">ส่วนที่ 2
                    ข้อมูลการเลี้ยงและสถานภาพฟาร์ม</a>
            </h4>
        </div>
        <div id="collapse2" class="panel-collapse collapse in">
            <div class="panel-body">
                <li><a href="{{url($PREFIX."/charts/normal/วัตถุประสงค์ของการเลี้ยงโคเนื้อ/farm_purposes")}}">วัตถุประสงค์ของการเลี้ยงโคเนื้อ</a>
                </li>
                <li><a href="{{url($PREFIX."/charts/pie/การทำประวัติโคเนื้อ/farm_record")}}">การทำประวัติโคเนื้อ</a></li>
                <li><a href="{{url($PREFIX."/charts/cattle/")}}">จำนวนโคเนื้อที่เลี้ยง</a></li>
                <li>
                    <a href="{{url($PREFIX."/charts/normal/ประสบการณ์การเลี้ยงโคเนื้อ/farm_exp")}}">ประสบการณ์การเลี้ยงโคเนื้อ</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/normal/เป้าหมายการเลี้ยงในอนาคต/farm_future")}}">เป้าหมายการเลี้ยงในอนาคต</a>
                </li>
                <li><a href="{{url($PREFIX."/charts/double/การขึ้นทะเบียนฟาร์มกับภาครัฐ/farm_register_status")}}">การขึ้นทะเบียนฟาร์มกับภาครัฐ</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/multi-choice/การเกิดโรคในฟาร์ม/abortion,tuberculosis,foot_mouth_disease,disease_other")}}">การเกิดโรคในฟาร์ม</a>
                </li>

                <li>
                    <a href="{{url($PREFIX."/charts/range-farmowner/ค่าใช้จ่ายในการเลี้ยงโคเนื้อ (บาท ต่อ เดือน)/total_expense_amount/1000/10000/3?withNull=true&nullText=ยังไม่ได้ขาย")}}">ค่าใช้จ่ายในการเลี้ยงโคเนื้อ</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/normal/ประวัติการตรวจโรคสัตว์/farm_disease_check")}}">ประวัติการตรวจโรคสัตว์</a>
                <li><a href="{{url($PREFIX."/charts/normal/แหล่งน้ำที่ใช้/water_source_types")}}">แหล่งน้ำที่ใช้</a>


            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#collapse3">ส่วนที่ 3 ข้อมูลแรงงาน
                    พื้นที่ในการเลี้ยง
                    และการจัดการอาหาร</a>
            </h4>
        </div>
        <div id="collapse3" class="panel-collapse collapse in">
            <div class="panel-body">
                <li><a href="{{url($PREFIX."/charts/range-farmowner/จำนวนแรงงานภายในครอบครัว/family_workers_amount/1/5/4")}}">จำนวนแรงงานภายในครอบครัว</a>
                </li>
                <li><a href="{{url($PREFIX."/charts/range-farmowner/จำนวนแรงงานภายนอก/external_workers_amount/1/5/4")}}">จำนวนแรงงานภายนอก</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/pie/ลักษณะการเลี้ยงโคเนื้อ/take_care_types")}}">ลักษณะการเลี้ยงโคเนื้อ</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/double/พื้นที่ที่ใช้ในการเลี้ยงโคเนื้อ/use_land/")}}">พื้นที่ที่ใช้ในการเลี้ยงโคเนื้อ</a>
                </li>
                <li><a href="{{url($PREFIX."/charts/pie/อาหารที่ใช้เลี้ยงโคเนื้อ/feed_types")}}">อาหารที่ใช้เลี้ยงโคเนื้อ</a>
                </li>
                <li><a href="{{url($PREFIX."/charts/pie/การให้แร่ธาตุก้อน/minerals_feed")}}">การให้แร่ธาตุก้อน</a></li>
                <li><a href="{{url($PREFIX."/charts/double/การสำรองฟางข้าว หรือเปลือกข้าวโพด/feedstock")}}">การสำรองฟางข้าว
                        หรือเปลือกข้าวโพด</a></li>
                <li>
                    <a href="{{url($PREFIX."/charts/normal/แหล่งอาหารหยาบในฤดูแล้ง/feed_summer_sources")}}">แหล่งอาหารหยาบในฤดูแล้ง</a>
                </li>

                <li><a href="{{url($PREFIX."/charts/range-farmowner/พื้นที่ถือครองทางการเกษตร/total_own_lands/0/50/4")}}">พื้นที่ถือครองทางการเกษตร</a>
                <li><a href="{{url($PREFIX."/charts/normal/การเช่าที่ดินเพื่อใช้ในการเลี้ยง/rent_land")}}">การเช่าที่ดินเพื่อใช้ในการเลี้ยง</a>


            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#collapse4">ส่วนที่ 4 การผสมพันธ์ุ
                    ประสิทธิภาพการผลิต
                    และการรักษาโรค</a>
            </h4>
        </div>
        <div id="collapse4" class="panel-collapse collapse in">
            <div class="panel-body">
                <li>
                    <a href="{{url($PREFIX."/charts/pie/การผสมพันธุ์โคเนื้อในฟาร์ม/farm_breeding_type")}}">การผสมพันธุ์โคเนื้อในฟาร์ม</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/normal/แหล่งน้ำเชื้อการผสมเทียม/inseminate_sources")}}">แหล่งน้ำเชื้อการผสมเทียม</a>
                </li>
                <li><a href="{{url($PREFIX."/charts/normal/ผู้ให้บริการผสมเทียม/breeders")}}">ผู้ให้บริการผสมเทียม</a></li>
                <li><a href="{{url($PREFIX."/charts/normal/การตายของโคในรอบปี/cattle_death")}}">การตายของโคในรอบปี</a></li>
                <li><a href="{{url($PREFIX."/charts/normal/บุคคลที่ทำการรักษาให้เมื่อโคเจ็บป่วย/disease_cured_by")}}">บุคคลที่ทำการรักษาให้เมื่อโคเจ็บป่วย</a>
                </li>

                <li><a href="{{url($PREFIX."/charts/range-farmowner/อัตราส่วนพ่อพันธุ์คุมฝูง/breeding_rate/1/20/3")}}">อัตราส่วนพ่อพันธุ์คุมฝูง</a>
                </li>

                <li>
                    <a href="{{url($PREFIX."/charts/doublePivot/การถ่ายพยาธิ/dewormed_amount/")}}">การถ่ายพยาธิ</a>
                </li>


                <li><a href="{{url($PREFIX."/charts/double/วัคซีนป้องกันโรค/vaccine_ever")}}">วัคซีนป้องกันโรค</a>
                </li>
                <li><a href="{{url($PREFIX."/charts/normal/การจัดการมูลโคในฟาร์ม/cattle_dung_uses")}}">การจัดการมูลโคในฟาร์ม</a>
                </li>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#collapse5">ส่วนที่ 5
                    ข้อมูลแหล่งเงินทุนที่ใช้ในการเลี้ยงโคเนื้อ</a>
            </h4>
        </div>
        <div id="collapse5" class="panel-collapse collapse in">
            <div class="panel-body">
                <li><a href="{{url($PREFIX."/charts/budget/")}}">เงินทุนการเลี้ยงโคเนื้อ</a></li>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#collapse6">ส่วนที่ 6 ข้อมูลการตลาด
                    การรวมกลุ่มของสมาชิก(วิสาหกิจชุมชนและสหกรณ์)</a>
            </h4>
        </div>
        <div id="collapse6" class="panel-collapse collapse in">
            <div class="panel-body">
                <li><a href="{{url($PREFIX."/charts/normal/การจำหน่ายโค/seller_types")}}">การจำหน่ายโคเนื้อให้กับใคร</a></li>
                <li>
                    <a href="{{url($PREFIX."/charts/normal/อายุของโคเนื้อที่จำหน่าย/age_sale")}}">อายุของโคเนื้อที่จำหน่าย</a>
                </li>

                <li>
                    <a href="{{url($PREFIX."/charts/normal/น้ำหนักของโคเนื้อที่ท่านจำหน่าย/weight_range_sale")}}">น้ำหนักของโคเนื้อที่ท่านจำหน่าย</a>
                </li>

                <li>
                    <a href="{{url($PREFIX."/charts/pie/ลักษณะการจำหน่าย/cattle_sale_methods")}}">ลักษณะการจำหน่ายโคเนื้อ</a>
                </li>
                <li><a href="{{url($PREFIX."/charts/groupJoin")}}">การรวมกลุ่มวิสาหกิจชุมชนและสหกรณ์โคเนื้อ</a>
                </li>
                <li><a href="{{url($PREFIX."/charts/sold")}}">ราคาของโคเนื้อที่ขาย และระยะเวลาในการเลี้ยง</a></li>
                <li>
                    <a href="{{url($PREFIX."/charts/pie/ความประสงค์ในการรวมกลุ่มวิสาหกิจชุมชนและสหกรณ์โคเนื้อ/group_join_future")}}">ความประสงค์ในการรวมกลุ่มวิสาหกิจชุมชนและสหกรณ์โคเนื้อ</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/normal/ความต้องการความช่วยเหลือจากสหกรณ์/cooperative_help_types")}}">ความต้องการความช่วยเหลือจากสหกรณ์</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/normal/ความต้องการซื้ออาหารข้นในนามสหกรณ์/feed_purchase_cooperative")}}">ความต้องการซื้ออาหารข้นในนามสหกรณ์</a>
                </li>

                <li>
                    <a href="{{url($PREFIX."/charts/normal/ระดับความพอใจต่อราคาที่ขาย/sale_satisfaction")}}">ระดับความพอใจต่อราคาที่ขาย</a>
                </li>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#collapse7">ส่วนที่ 7 การได้รับบริการ
                    การส่งเสริมและสนับสนุนจากหน่วยงานต่างๆ</a>
            </h4>
        </div>
        <div id="collapse7" class="panel-collapse collapse in">
            <div class="panel-body">
                <li><a href="{{url($PREFIX."/charts/normal/หน่วยงานที่ให้บริการส่งเสริมการเลี้ยงโคเนื้อ/support_sources")}}">หน่วยงานที่ให้บริการส่งเสริมการเลี้ยงโคเนื้อ</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/pie/การเยี่ยมเยือนฟาร์มจากหน่วยงาน/support_visit")}}">การเยี่ยมเยือนฟาร์มจากหน่วยงาน</a>
                </li>

                <li>
                    <a href="{{url($PREFIX."/charts/pie/การได้รับการสนับสนุนปัจจัยการผลิต/production_support")}}">การได้รับการสนับสนุนปัจจัยการผลิต</a>
                </li>

                <li>
                    <a href="{{url($PREFIX."/charts/pie/การใช้บริการด้านสุขภาพโคจากหน่วยงานของกรมปศุสัตว์/cattle_heath_support")}}">การใช้บริการด้านสุขภาพโคจากหน่วยงานของกรมปศุสัตว์</a>
                </li>
                <li>
                    <a href="{{url($PREFIX."/charts/pie/การเข้ารับการฝึกอบรมเกี่ยวกับการเลี้ยงโคเนื้อ/training_support")}}">การเข้ารับการฝึกอบรมเกี่ยวกับการเลี้ยงโคเนื้อ</a>
                </li>

                <li>
                    <a href="{{url($PREFIX."/charts/pie/การไปดูงานเกี่ยวกับการเลี้ยงโคเนื้อ/observe_support")}}">การไปดูงานเกี่ยวกับการเลี้ยงโคเนื้อ</a>
                </li>

                <li>
                    <a href="{{url($PREFIX."/charts/pie/การสนับสนุนให้แม่พันธุ์โคเนื้อมาเลี้ยงเพื่อผลิตลูก/female_breeder_support")}}">การสนับสนุนให้แม่พันธุ์โคเนื้อมาเลี้ยงเพื่อผลิตลูก</a>
                </li>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#collapse7">ส่วนที่ 8 ปัญหา อุปสรรค และข้อเสนอแนะ</a>
            </h4>
        </div>
        <div id="collapse7" class="panel-collapse collapse in">
            <div class="panel-body">
                <li><a href="{{url($PREFIX."/charts/suggestion")}}">ตารางปัญหา อุปสรรคและข้อเสนอแนะ</a></li>
            </div>
        </div>
    </div>

</div>
