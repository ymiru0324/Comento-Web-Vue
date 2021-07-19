<template>
  <div>
    <layout/>
      <div class="table_screen" style="text-align:center; width:50%; font-size:12px; margin:0 auto;">
        <table style="border: 1px solid black;">
          <tr>
            <td style="border: 1px solid black; font-weight:bold;">화면명</td>
            <td style="border: 1px solid black;">공통코드</td>
            <td style="border: 1px solid black; font-weight:bold;">Project Name</td>
            <td style="border: 1px solid black;">코멘토 웹개발 체험 플랫폼</td>
          </tr>
          <tr>
            <td style="border: 1px solid black; font-weight:bold;">Location</td>
            <td style="border: 1px solid black;">설정>공통코드</td>
            <td style="border: 1px solid black; font-weight:bold;">Writer / Date</td>
            <td style="border: 1px solid black;">김용민 / 2021.07.08</td>
          </tr>
        </table>
      </div>

      <div class="divLeft" style="text-align:center;">
        <input type="text" class="searchInput" v-model="form.code_cdid" placeholder="코드명" style="display:table-cell; width:40%"/>
        <input class="searchBtn" type="button" @click="doList" value="조회"/>
      </div>

       <div class="mt10" style="">
          <div style="text-align:left">
            <span>대표코드</span>
          </div>
      <table style="width:100%" class="mt10" @row-click="doDetailList">
        <colgroup>
          <col width="10%">
          <col width="20%">
          <col width="20%">
          <col width="10%">
          <col width="10%">
          <col width="10%">
          <col width="10%">
          <col width="10%">
        </colgroup>
        <thead>
          <td scope="col">코드</td>
          <td scope="col">코드명</td>
          <td scope="col">코드영문명</td>
          <td scope="col">코드순서</td>
          <td scope="col">사용여부</td>
          <td scope="col">연결코드1</td>
          <td scope="col">연결코드2</td>
          <td scope="col">연결코드3</td>
        </thead>
        <tbody>
          <tr v-for="item in codeInfoList" :key="item.commCdId" @click="doDetailList(item.commCdId)">
            <td>{{item.commCdId}}</td>
            <td>{{item.commCdNm}}</td>
            <td>{{item.commCdEng}}</td>
            <td>{{item.cdSort}}</td>
            <td>{{item.cdUseYn}}</td>
            <td>{{item.conn1Cd}}</td>
            <td>{{item.conn2Cd}}</td>
            <td>{{item.conn3Cd}}</td>
          </tr>
        </tbody>
      </table>
    </div>

    <div class="mt10">
      <div style="text-align:left">
        <span>상세코드</span>
      </div>
      <table style="width:100%" class="mt10">
        <colgroup>
          <col width="10%">
          <col width="5%">
          <col width="20%">
          <col width="15%">
          <col width="10%">
          <col width="10%">
          <col width="10%">
          <col width="10%">
          <col width="10%">
        </colgroup>
        <thead>
          <td scope="col">대표코드</td>
          <td scope="col">코드</td>
          <td scope="col">코드명</td>
          <td scope="col">코드영문명</td>
          <td scope="col">코드순서</td>
          <td scope="col">사용여부</td>
          <td scope="col">연결코드1</td>
          <td scope="col">연결코드2</td>
          <td scope="col">연결코드3</td>
        </thead>
        <tbody>
          <tr v-for="item in codeList" :key="item.cdId">
            <td>{{item.commCdId}}</td>
            <td>{{item.cdId}}</td>
            <td>{{item.cdNm}}</td>
            <td>{{item.cdEng}}</td>
            <td>{{item.cdSort}}</td>
            <td>{{item.cdUseYn}}</td>
            <td>{{item.conn1Cd}}</td>
            <td>{{item.conn2Cd}}</td>
            <td>{{item.conn3Cd}}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
import layout from '@/views/layout/Layout'
import {reqPost} from '@/api/tran'
export default {
  name: 'CodeList',
  components: { layout },
  data () {
    return {
      form: {
        code_cdid: ''
      },
      codeInfoList: [],
      codeList: {}
    }
  },
  methods: {
    doList () {
      reqPost('/code/selectCodeInfo', this.form).then(response => {
        this.codeInfoList = response.data.list
      })
    },
    doDetailList (row) {
      this.form.code_cdid = row
      reqPost('/code/selectCodeList', this.form).then(response => {
        this.codeList = response.data.list
      })
    }
  }
}
</script>
