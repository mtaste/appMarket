import {
	Component,
	OnInit
} from '@angular/core';
import {
	ActivatedRoute
} from '@angular/router';
import {
	TreeNode,
	MenuItem,
	ConfirmationService,
	Message,
	SelectItem
} from 'primeng/primeng';
import {
	AuthOrgService,
	UtilService,
	FormBuilder,
	FormGroup,
	Validators,
	FormControl,
	CrudService
} from '../index';
@Component({
	selector: 'app-cus',
	templateUrl: './cus.component.html',
	styleUrls: ['./cus.component.css']
})
export class CusComponent implements OnInit {
	private obj = {};
	private RestFuns;
	//列表
	private menus = {};
	//列表
	private listModel = {};
	//填写信息
	private form = [];
	constructor(
		private confirmationService: ConfirmationService,
		private utilService: UtilService,
		private crudService: CrudService
	) {
		this.form = this.getFormModel();
		//list model
		this.listModel = this.getListModel();
		//菜单
		this.menus = this.getMenus();
	};

	ngOnInit() {};

	InitListForm(e) {
		this.obj = e;
		e.listObj.funcObj.RestFuncs(['add']);
	};
	RowSeleted(data) {
		var f = this.obj['listObj']['funcObj'];
		if(!data && data.id) {
			return;
		};
		f.RestFuncs(['add', 'mod']);
	};
	private getMenus() {
		return {
			add: (auth, ft) => {
				//新增
				ft.step = 2;
				var m = this.utilService.ClearObj(ft.formObj.formModel.value);
				ft.formObj.formModel.setValue(m);
				ft.formObj.canSave = true;
				ft.authData = [];
			},
			mod: (auth, ft) => {
				//修改
				var id = ft.listObj.selectedObj.id;
				if(!id) return;
				ft.step = 2;
				ft.formObj.canSave = true;
				var t = this.utilService.ClearObj(ft.formObj.formModel.value);
				var m = this.utilService.CopyObj(t, ft.listObj.selectedObj);
				ft.formObj.formModel.setValue(m);
			}
		};
	};

	private getFormModel() {
		return [{
			model: 'id'
		}, {
			name: '名称*',
			model: 'name',
			vali: Validators.required,
			msg: "名称不能为空"
		}, {
			name: '地址*',
			model: 'address',
			vali: Validators.required,
			msg: "地址不能为空"
		}, {
			name: '联系人*',
			model: 'contact',
			vali: Validators.required,
			msg: "联系人不能为空"
		}, {
			name: '电话*',
			model: 'mobile',
			vali: [Validators.required],
			msg: "电话号码有误"
		}, {
			name: '备注',
			model: 'remark',
			type: 'textarea'
		}];
	};

	private getListModel() {
		return {
			url: 'crm/cus/list.json',
			model: [{
				field: 'name',
				header: '名称'
			}, {
				field: 'address',
				header: '地址'
			}, {
				field: 'contact',
				header: '联系人'
			}, {
				field: 'mobile',
				header: '电话'
			}]
		};
	}

}