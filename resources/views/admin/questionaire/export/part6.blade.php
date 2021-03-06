<div style="page-break-before: always">
    <h2>ส่วนที่ 6 ข้อมูลการตลาด การรวมกลุ่มของสมาชิก(วิสาหกิจชุมชนและสหกรณ์)</h2>
    <div class="line-report">
        <label class="header">6.1 ท่านจำหน่ายโคเนื้อให้กับใคร</label>
        @if(sizeof($farmOwner->seller_types)>0)
        <ol style="margin-top: 0px;">
            @foreach($farmOwner->seller_types as $j)
                <li>
                    {{$j->choice or '-'}}
                    @if($j->has_text)
                        <b>ระบุ : </b>{{$j->pivot->remark}}
                    @endif
                </li>
            @endforeach
        </ol>
        @else
            {{'-'}}
        @endif
    </div>
    <div class="line-report">
        <label class="header">6.2 อายุของโคเนื้อที่ท่านจำหน่าย </label><br>{{$farmOwner->age_sale->choice or '-'}}
    </div>
    <div class="line-report">
        <label class="header">6.3 น้ำหนักของโคเนื้อที่ท่านจำหน่าย </label><br>{{$farmOwner->weight_range_sale->choice or '-'}}
    </div>
    <div class="line-report">
        <label class="header">6.4 ลักษณะการจำหน่าย</label>
        @if(sizeof($farmOwner->cattle_sale_methods)>0)
        <ol style="margin-top: 0px;">
            @foreach($farmOwner->cattle_sale_methods as $j)
                <li>
                    {{$j->choice or '-'}}
                </li>
            @endforeach
        </ol>
        @else
            {{'-'}}
        @endif
    </div>
    <div class="line-report">
        <label class="header">6.5 ท่านรวมกลุ่มวิสาหกิจชุมชนและสหกรณ์โคเนื้อเมื่อใด</label>
        @if(sizeof($farmOwner->group_joins)>0)
        <ol style="margin-top: 0px;">
            @foreach($farmOwner->group_joins as $j)
                <li>
                    {{$j->choice}}
                    @if($j->pivot->remark)
                        <b>ชื่อกลุ่ม : </b>{{$j->pivot->remark}}
                    @endif
                    @if($j->pivot->source)
                        <b>เข้าร่วมเมื่อ : </b>{{$j->pivot->source}}
                    @endif
                </li>
            @endforeach
        </ol>
        @else
            {{'-'}}
        @endif
    </div>
    <div class="line-report">
        <label class="header">6.6 ถ้ายังไม่เข้ารวมกลุ่มท่านมีความประสงค์ในการรวมกลุ่มวิสาหกิจชุมชนและสหกรณ์โคเนื้อหรือไม่ </label>
        <br>{{$farmOwner->group_join_future->choice or '-'}}
    </div>
    <div class="line-report">
        <label class="header">6.7 ท่านต้องการให้สหกรณ์ช่วยเหลือในด้านใด</label>
        @if(sizeof($farmOwner->cooperative_help_types)>0)
        <ol style="margin-top: 0px;">
            @foreach($farmOwner->cooperative_help_types as $j)
                <li>
                    {{$j->choice}}
                    @if($j->has_text)
                        <b>ระบุ : </b>{{$j->pivot->remark}}
                    @endif
                </li>
            @endforeach
        </ol>
        @else
            {{'-'}}
        @endif
    </div>
    <div class="line-report">
        <label class="header">6.8 ท่่านต้องการซื้ออาหารข้นในนามสหกรณ์หรือไม่ </label>
        <br>{{$farmOwner->feed_purchase_cooperative->choice or '-'}}
    </div>

    <div class="line-report">
        <label class="header">6.9 ท่านขายโคเนื้อได้ราคาเท่าไหร่ และใช้เวลาในการเลี้ยงนานเท่าใด</label>
        @if(sizeof($farmOwner->cattle_sales)>0)
        <ol style="margin-top: 0px;">

            @foreach($farmOwner->cattle_sales as $j)
                <li>
                    {{$j->choice or '-'}}
                        <b>ราคาขายโคเนื้อ : </b>{{$j->pivot->remark or '-'}} :
                        <b>ระยะเวลาที่เลี้ยง : </b>{{$j->pivot->age_range_sale or '-'}}

                </li>
            @endforeach
        </ol>
        @else
            {{'-'}}
        @endif
    </div>
    <div class="line-report">
        <label class="header">6.10 ท่านพอใจกับราคาที่ขายได้หรือไม่</label>
        <br>{{$farmOwner->sale_satisfaction->choice or '-'}}
    </div>
</div>
