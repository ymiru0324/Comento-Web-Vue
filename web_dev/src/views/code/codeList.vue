<template>
  <div>
    <layout/>
    <br>
    <div class="divLeft" style="text-align:center;">
      <el-input v-model="form.codeNm" placeholder="코드명" style="width:90%"></el-input>
      <el-button @click="doList" type="primary">조회</el-button>
    </div>

    <el-card class="mt10">
      <div slot="header" class="clearfix" style="text-align:left">
        <span>대표코드</span>
      </div>
      <el-row type="flex">
        <el-table :data="codeInfoList" border highlight-current-row @row-click="doDetailList" style="margin:0 auto; width:100%; height:300;">
          <el-table-column align="center" label="코드" width="150">
            <template slot-scope="scope">
                  {{scope.row.commCdId}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="코드명" width="200">
            <template slot-scope="scope">
                  {{scope.row.commCdNm}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="코드영문명" width="250">
            <template slot-scope="scope">
                  {{scope.row.commCdEng}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="코드순서" width="250">
            <template slot-scope="scope">
                  {{scope.row.cdSort}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="사용여부" width="150">
            <template slot-scope="scope">
                  {{scope.row.cdUseYn}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="연결코드1" width="140">
            <template slot-scope="scope">
                  {{scope.row.conn1Cd}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="연결코드2" width="140">
            <template slot-scope="scope">
                  {{scope.row.conn2Cd}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="연결코드3" width="140">
            <template slot-scope="scope">
                  {{scope.row.conn3Cd}}
            </template>
          </el-table-column>
        </el-table>
      </el-row>
    </el-card>
    <el-card class="mt10">
      <div slot="header" class="clearfix" style="text-align:left">
        <span>상세코드</span>
      </div>
      <el-row type="flex">
        <el-table :data="codeList" border highlight-current-row style="margin:0 auto; width:100%;" height="500">
          <el-table-column align="center" label="대표코드" width="150">
            <template slot-scope="scope">
                  {{scope.row.commCdId}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="코드" width="150">
            <template slot-scope="scope">
                  {{scope.row.cdId}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="코드명" width="200">
            <template slot-scope="scope">
                  {{scope.row.cdNm}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="코드영문명" width="250">
            <template slot-scope="scope">
                  {{scope.row.cdEng}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="코드순서" width="250">
            <template slot-scope="scope">
                  {{scope.row.cdSort}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="사용여부" width="150">
            <template slot-scope="scope">
                  {{scope.row.cdUseYn}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="연결코드1" width="140">
            <template slot-scope="scope">
                  {{scope.row.conn1Cd}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="연결코드2" width="140">
            <template slot-scope="scope">
                  {{scope.row.conn2Cd}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="연결코드3" width="140">
            <template slot-scope="scope">
                  {{scope.row.conn3Cd}}
            </template>
          </el-table-column>
        </el-table>
      </el-row>
    </el-card>
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
        codeNm: ''
      },
      detailObj: {
        codeNm: '',
        commCdId: ''
      },
      codeInfoList: [],
      codeList: []
    }
  },
  methods: {
    doList () {
      reqPost('/code/selectCodeInfo', this.form).then(response => {
        this.codeInfoList = response.data.list
      })
    },
    doDetailList (row) {
      this.detailObj.codeNm = this.form.codeNm
      this.detailObj.commCdId = row.commCdId
      reqPost('/code/selectCodeList', this.detailObj).then(response => {
        this.codeList = response.data.list
      })
    }
  }
}
</script>
