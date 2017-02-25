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
		this.form = [{
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
			vali: Validators.required,
			msg: "联系人不能为空"
		}, {
			name: '标示*',
			model: 'flag',
			vali: Validators.required,
			msg: "联系人不能为空"
		}];
		//list model
		this.listModel = {
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
			}]
		};
		//菜单
		this.menus = {
			add: (auth, ft) => {
				ft.step = 2;
				var m = this.utilService.ClearObj(ft.formModel.value);
				ft.formModel.setValue(m);
			},
			mod: (auth, ft) => {
				if(!ft.selectedObj["id"]) return;
				ft.step = 2;
				var t = this.utilService.ClearObj(ft.formModel.value);
				var m = this.utilService.CopyObj(t, ft.selectedObj);
				ft.formModel.setValue(m);
			},
			remove: (auth, ft) => {
				this.confirmationService.confirm({
					header: '删除提示',
					message: '您确定需要删除此记录?',
					accept: () => {
						var m = ft.selectedObj;
						this.crudService.DeleteData(
							auth.item.authUrl, m["id"],
							ret => {
								ft.msgs.push({
									severity: 'success',
									summary: '提示',
									detail: "删除成功"
								});
								var index = this.utilService.GetArrayIndex(ft.listData, "id", m["id"]);
								ft.listData.splice(index, 1);
								ft.selectedObj = {};
							});
					}
				});
			}
		};
	};

	ngOnInit() {

	};

}