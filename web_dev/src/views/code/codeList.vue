<template>
  <div style="width:100%">
    <layout/>
    <div class="divLeft mt20" >
      <el-input v-model="form.codeNm" placeholder="코드명" @keyup.native.enter="doList" style="width:90%"></el-input>
      <el-button @click="doList" type="primary">조회</el-button>
    </div>
    <el-card class="box-card mt10">
      <div slot="header" class="clearfix" style="text-align:left">
        <span>대표코드</span>
      </div>
      <el-row type="flex">
        <el-table :data="codeInfoList" border highlight-current-row @row-click="doDetailList" height="300" :header-cell-style="{textAlign: 'center'}" style="width: 100%; height:100%" stripe>
          <el-table-column align="center" label="코드" width="120">
            <template slot-scope="scope">
              {{scope.row.commCdId}}
            </template>
          </el-table-column>
          <el-table-column label="코드명" align="left" :min-width="120-10">
            <template slot-scope="scope">
              {{scope.row.commCdNm}}
            </template>
          </el-table-column>
          <el-table-column label="코드영문명" align="left" min-width="60">
            <template slot-scope="scope">
              {{scope.row.commCdEng}}
            </template>
          </el-table-column>
          <el-table-column label="코드순서" align="center" width="120">
            <template slot-scope="scope">
              {{scope.row.cdSort}}
            </template>
          </el-table-column>
          <el-table-column label="사용여부" align="center" width="120">
            <template slot-scope="scope">
              <el-checkbox v-model="scope.row.cdUseYn" true-label="Y" disabled/>
            </template>
          </el-table-column>
          <el-table-column label="연결코드1" align="center" width="120">
            <template slot-scope="scope">
              {{scope.row.conn1Cd}}
            </template>
          </el-table-column>
          <el-table-column label="연결코드2" align="center" width="120">
            <template slot-scope="scope">
              {{scope.row.conn2Cd}}
            </template>
          </el-table-column>
          <el-table-column label="연결코드3" align="center" width="120">
            <template slot-scope="scope">
              {{scope.row.conn3Cd}}
            </template>
          </el-table-column>
        </el-table>
      </el-row>
    </el-card>
    <el-card class="box-card mt10">
      <div slot="header" class="clearfix" style="text-align:left">
        <span>상세코드</span>
      </div>
      <el-row type="flex">
        <el-table :data="codeList" border highlight-current-row @row-click="doDetailList" height="300" :header-cell-style="{textAlign: 'center'}" style="width: 100%" stripe>
          <el-table-column align="center" label="대표코드" width="120">
            <template slot-scope="scope">
              {{scope.row.commCdId}}
            </template>
          </el-table-column>
          <el-table-column align="center" label="코드" width="120">
            <template slot-scope="scope">
              {{scope.row.cdId}}
            </template>
          </el-table-column>
          <el-table-column label="코드명" align="left" :min-width="120-10">
            <template slot-scope="scope">
              {{scope.row.cdNm}}
            </template>
          </el-table-column>
          <el-table-column label="코드영문명" align="left" min-width="60">
            <template slot-scope="scope">
              {{scope.row.cdEng}}
            </template>
          </el-table-column>
          <el-table-column label="코드순서" align="center" width="120">
            <template slot-scope="scope">
              {{scope.row.cdSort}}
            </template>
          </el-table-column>
          <el-table-column label="사용여부" align="center" width="120">
            <template slot-scope="scope">
              <el-checkbox v-model="scope.row.cdUseYn" true-label="Y" disabled/>
            </template>
          </el-table-column>
          <el-table-column label="연결코드1" align="center" width="120">
            <template slot-scope="scope">
              {{scope.row.conn1Cd}}
            </template>
          </el-table-column>
          <el-table-column label="연결코드2" align="center" width="120">
            <template slot-scope="scope">
              {{scope.row.conn2Cd}}
            </template>
          </el-table-column>
          <el-table-column label="연결코드3" align="center" width="120">
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
        this.doDetailList(this.codeInfoList[0])
      })
    },
    doDetailList (row) {
      this.detailObj.commCdId = row.commCdId
      reqPost('/code/selectCodeList', this.detailObj).then(response => {
        this.codeList = response.data.list
      })
    }
  }
}
</script>

<style lang="scss" scoped>
.el-table {
  /deep/ .el-table__body-wrapper::-webkit-scrollbar {
      width: 16px;
      height: 16px;
  }
  /deep/ .el-table__body-wrapper::-webkit-scrollbar-track {
      box-shadow: 0px 1px 3px #dfe6ec inset;
      border-radius: 0px;
      background-color: #dfe6ec;
  }
  /deep/ .el-table__body-wrapper::-webkit-scrollbar-thumb {
      box-shadow: 0px 1px 3px #b5bdc3 inset;
      border-radius: 0px;
      background-color: #b5bdc3;
  }
}
</style>
