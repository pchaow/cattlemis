<div style="page-break-before: always">
    <h2>ส่วนที่ 4 การผสมพันธ์ุ ประสิทธิภาพการผลิต และการรักษาโรค</h2>
    <div class="line-report">
        <label class="header">4.1 ผสมพันธุ์โคเนื้อในฟาร์มของท่าน</label>
        {{$farmOwner->farm_breeding_type->choice or '-'}}
    </div>
    <div class="line-report">
        <label class="header">4.2 การผสมเทียมใช้น้ำเชื้อจากแหล่งใด</label>
        <ol style="margin-top: 0px;">
            @if(sizeof($farmOwner->inseminate_sources)>0)
            @foreach($farmOwner->inseminate_sources as $j)
                <li>
                    {{$j->choice or '-'}}
                    @if($j->pivot->remark)
                        <b>ชื่อหน่วยงาน : </b>{{$j->pivot->remark}}
                    @endif
                    @if($j->pivot->price)
                        <b>ราคาต่อโด๊ส : </b>{{$j->pivot->price}} <b>บาท</b>
                    @endif
                </li>
            @endforeach
                @else
            {{'-'}}
                @endif
        </ol>
    </div>
    <div class="line-report">
        <label class="header">4.2.1 ผู้ให้บริการผสมเทียมคือใคร</label>
        <ol style="margin-top: 0px;">
            @if(sizeof($farmOwner->breeders)>0)
            @foreach($farmOwner->breeders as $j)
                <li>
                    {{$j->choice or '-'}}
                    @if($j->has_text)
                        <b>ชื่อกลุ่ม : </b>{{$j->pivot->remark}}
                    @endif
                </li>
            @endforeach
                @else
                    {{'-'}}
                @endif
        </ol>
    </div>
    <div class="line-report">
        <label class="header">4.3 การใช้พ่อพันธุ์คุมฝูง</label>
        <br>อัตราส่วนพ่อพันธุ์คุมฝูง 1 ตัวต่อแม่พันธุ์ : {{$farmOwner->breeding_rate or '-'}} ตัว
    </div>
    <div class="line-report">
        <label class="header">4.4 การตายของโคในรอบปี </label>
        @if($farmOwner->cattle_death)
            <br>{{$farmOwner->cattle_death->choice or '-'}}
            @if($farmOwner->cattle_death->has_text)
                {{$farmOwner->cattle_death->pivot->amount or '-'}} ตัว
            @endif
        @else
            {{'-'}}
        @endif
    </div>
    <div class="line-report">
        <label class="header">4.4.1 สาเหตุการตาย</label>
        <ol style="margin-top: 0px;">
            @if(sizeof($farmOwner->cattle_death_causes))
            @foreach($farmOwner->cattle_death_causes as $j)
                <li>
                    {{$j->choice or '-'}}
                    @if($j->has_text)
                        <b>ระบุ : </b>{{$j->pivot->remark}}
                    @endif
                </li>
            @endforeach
                @else
                    {{'-'}}
                @endif
        </ol>
    </div>
    <div class="line-report">
        <label class="header">4.5 เมื่อโคเจ็บป่วย บุคคลที่ทำการรักษาให้</label>
        <ol style="margin-top: 0px;">
            @if(sizeof($farmOwner->disease_cured_by))
            @foreach($farmOwner->disease_cured_by as $j)
                <li>
                    {{$j->choice or '-'}}
                    @if($j->has_text)
                        <b>ระบุ : </b>{{$j->pivot->remark}}
                    @endif
                </li>
            @endforeach
                @else
                    {{'-'}}
                @endif
        </ol>
    </div>
    <div class="line-report">
        <label class="header">4.6 การถ่ายพยาธิ </label>
        @if($farmOwner->dewormed_amount)
            <br>{{$farmOwner->dewormed_amount->choice or '-'}}
            @if($farmOwner->dewormed_amount->pivot->amount)
                {{$farmOwner->dewormed_amount->pivot->amount or '-'}} ครั้ง/ปี
            @endif
        @else
            {{'-'}}
        @endif
    </div>
    <div class="line-report">
        <label class="header">4.7 ท่านได้ทำวัคซีนป้องกันโรคให้กับโคเนื้อที่เลี้ยงหรือไม่ </label>
        <br>{{$farmOwner->vaccine_ever->choice or '-'}}
        @if($farmOwner->vaccine_ever)
            @if($farmOwner->vaccine_ever->choice == "ทำ")
                <b>ชนิดวัคซีน : </b>
                <ol style="margin-top: 0px;">

                    @foreach($farmOwner->vaccine_types as $j)
                        <li>
                            {{$j->choice or '-'}}
                            @if($j->has_text)
                                @if($j->pivot->source)
                                    <b>ระบุ : </b> {{$j->pivot->source or '-'}}
                                @endif
                                <b>จำนวน </b>{{$j->pivot->amount or '-'}}<b> ครั้ง/ปี</b>
                                <b>ผู้ทำ : </b> {{$j->pivot->remark or '-'}}

                            @endif
                        </li>

                    @endforeach
                </ol>
            @endif
        @endif
    </div>

    <div class="line-report">
        <label class="header">4.8 ท่านมีการจัดการมูลโคในฟาร์มของท่านอย่างไร</label>
        <ol style="margin-top: 0px;">
            @if(sizeof($farmOwner->cattle_dung_uses)>0)
            @foreach($farmOwner->cattle_dung_uses as $j)
                <li>
                    {{$j->choice or '-'}}
                    @if($j->pivot->price)
                        : {{$j->pivot->price}} <b> บาท/ปี</b>
                    @endif
                    @if($j->choice=="ทำแก๊สชีวภาพใช้ในครัวเรือน")
                        : <b>{{$farmOwner->biogas_status->choice}}</b>
                    @endif
                </li>
            @endforeach
            @else
                {{'-'}}
                @endif
        </ol>
    </div>
</div>
