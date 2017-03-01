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
	MgOrgService,
	CrudService
} from '../../index';

@Component({
	selector: 'app-org-register',
	templateUrl: './org-register.component.html',
	styleUrls: ['./org-register.component.css']
})
export class OrgRegisterComponent implements OnInit {
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
		private mgOrgService: MgOrgService,
		private utilService: UtilService,
		private crudService: CrudService
	) {
		this.form = this.getFormModel();
		//list model
		this.listModel = this.getListModel();
		//菜单
		//this.menus = this.getMenus();
	};

	ngOnInit() {};

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
	

	private getFormModel() {
		var str = '//^\-?[0-9]+(\.[0-9]+)?$//';
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
			name: '标示*',
			model: 'flag',
			vali: Validators.required,
			msg: "联系人不能为空"
		}];
	};

	private getListModel() {
		return {
			url: 'mg/org/register/list.json',
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
			}, {
				field: 'flag',
				header: '标示'
			}, {
				field: 'status',
				header: '状态'
			}]
		};
	}
}