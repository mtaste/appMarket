import {
	Component,
	OnInit
} from '@angular/core';
import {
	Validators,
	UtilService
} from '../index';
@Component({
	selector: 'app-points-change',
	templateUrl: './points-change.component.html',
	styleUrls: ['./points-change.component.css']
})
export class PointsChangeComponent implements OnInit {
	private status = [];
	private obj = {};
	//列表
	private listModel = {};
	//填写信息
	private form = [];
	//产品列表
	private productModel = {};
	private selectUrls = {
		add: 'mms/info/points-change/addDetail.do',
		remove: 'mms/info/points-change/removeDetail.do'
	};
	constructor(
		private utilService: UtilService
	) {
		this.utilService.loadingCompont = false;
		this.form = this.getFormModel();
		//list model
		this.listModel = this.getListModel();
		//product model
		this.productModel = this.getSelectModel();
		//status 
		this.status = this.utilService.GetStatusTab(['0', '1', '2', '99'], false);
	};

	ngOnInit() {

	};

	private getFormModel() {
		return [{
			model: 'id'
		}, {
			name: '标题',
			model: 'title',
			vali: Validators.required,
			msg: "标题不能为空"
		}, {
			name: '备注',
			model: 'remark',
			type: 'textarea'
		}];
	};

	private getListModel() {
		return {
			url: 'mms/info/points-change/list.json',
			model: [{
				field: 'title',
				header: '标题'
			}, {
				field: 'status',
				header: '状态'
			}]
		};
	}

	private getSelectModel() {
		return {
			listUrl: 'mms/info/points-change/detail.do',
			listModel: [{
				field: 'userName',
				header: '会员账户'
			}, {
				field: 'name',
				header: '姓名'
			}, {
				field: 'points',
				header: '积分'
			}],
			chooseUrl: "mms/info/points-change/memberList.do",
			chooseModel: [{
				field: 'userName',
				header: '会员账户'
			}, {
				field: 'name',
				header: '姓名'
			}],
			editUrl: 'mms/info/points-change/detailPoints.do',
			editForm: [{
				model: 'id'
			}, {
				name: '积分',
				model: 'points',
				type: 'number'
			}, {
				model: 'userName',
				name: "会员账户",
				display: true
			}, {
				model: 'name',
				name: "姓名",
				display: true
			}]
		};
	};

}