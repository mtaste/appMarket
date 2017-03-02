import {
	Component,
	OnInit
} from '@angular/core';
import {
	UtilService,
	Validators,
	CrudService
} from '../index';
@Component({
	selector: 'app-stock-change',
	templateUrl: './stock-change.component.html',
	styleUrls: ['./stock-change.component.css']
})
export class StockChangeComponent implements OnInit {
	private obj = {};
	private RestFuns;
	//列表
	private listModel = {};
	//填写信息
	private form = [];
	//产品列表
	private productModel = {};
	constructor(
		private utilService: UtilService,
		private crudService: CrudService
	) {
		this.form = this.getFormModel();
		//list model
		this.listModel = this.getListModel();
		//product model
		this.productModel = this.getProductModel();
	};

	ngOnInit() {

	};

	InitListForm(e) {
		this.obj = e;
		e.listObj.funcObj.RestFuncs(['add']);
	};
	RowSeleted(data) {
		var f = this.obj['listObj']['funcObj'];
		if(!data && data.id) {
			f.RestFuncs(['add', 'mod']);
			return;
		};
		if(data.status == this.utilService.GetStatus('0')) {
			f.RestFuncs(['add', 'mod', 'app', 'remove']);
		} else if(data.status == this.utilService.GetStatus('1')) {
			f.RestFuncs(['add', 'mod', 'auth', 'reject']);
		} else {
			f.RestFuncs(['add', 'mod']);
		}
	};
	AddEvent(e) {
		this.selectListObj['showFuns'] = this.obj['formObj']['canSave'];
		var f = this.obj['formObj'];
		var value = f.formModel.value;
		this.selectListObj['Id'](value.id);
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
			url: 'im/product/change/list.json',
			model: [{
				field: 'title',
				header: '标题'
			}, {
				field: 'status',
				header: '状态'
			}]
		};
	}

	private getProductModel() {
		return {
			listUrl: 'im/product/change/detail.do',
			listModel: [{
				field: 'name',
				header: '产品名称'
			}, {
				field: 'selfNum',
				header: '自定编号'
			}, {
				field: 'qty',
				header: '数量'
			}],
			chooseUrl: "im/product/change/productList.do",
			chooseModel: [{
				field: 'name',
				header: '产品名称'
			}, {
				field: 'selfNum',
				header: '自定编号'
			}],
			editUrl: 'im/product/change/detailQty.do',
			editForm: [{
				model: 'id'
			}, {
				name: '数量',
				model: 'qty',
				type: 'number'
			}, {
				model: 'name',
				name: "名称",
				display: true
			}]
		};
	};
	private selectListObj = {};
	InitSelectListEvent(e) {
		this.selectListObj = e;
	};
	getParam(e) {
		var f = this.obj['formObj'];
		var value = f.formModel.value;
		if(!value.id) {
			alert('请先保存再操作.');
			return;
		};
		var param = {
			id: value.id,
			productIds: e.ids
		}
		return param;
	};
	detailHandler(url, e) {
		var p = this.getParam(e);
		if(!p) return;
		this.crudService.SaveData(url, p, (ret) => {
			e && e.bk && e.bk();
		});
	}
	RemoveEvent(e) {
		this.detailHandler('im/product/change/removeDetail.do', e);
	};

	ChooseEvent(e) {
		this.detailHandler('im/product/change/addDetail.do', e);
	};

}