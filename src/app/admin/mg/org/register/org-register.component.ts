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
		this.menus = this.getMenus();
	};

	ngOnInit() {};
	private display = false;
	private remark = "";
	private tempFunc;
	Reject() {
		this.tempFunc && this.tempFunc();
		this.display = false;
	};
	InitListForm(e) {
		this.obj = e;
		e.listObj.funcObj.RestFuncs(['add']);
	};
	RowSeleted(data) {
		if(!data && data.id) {
			f.RestFuncs(['add', 'mod']);
			return;
		};
		var f = this.obj['listObj']['funcObj'];
		if(data.status == this.utilService.GetStatus('0')) {
			f.RestFuncs(['add', 'mod', 'app', 'remove']);
		} else if(data.status == this.utilService.GetStatus('1')) {
			f.RestFuncs(['add', 'mod', 'auth', 'reject']);
		} else {
			f.RestFuncs(['add', 'mod']);
		}
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
				if(ft.listObj.selectedObj.status != this.utilService.GetStatus('0') &&
					ft.listObj.selectedObj.status != this.utilService.GetStatus('99')) {
					ft.formObj.canSave = false;
				} else {
					ft.formObj.canSave = true;
				}
				var t = this.utilService.ClearObj(ft.formObj.formModel.value);
				var m = this.utilService.CopyObj(t, ft.listObj.selectedObj);
				ft.formObj.formModel.setValue(m);
				//获取审核记录
				this.crudService.GetData('auth/bill/list.do', {
					id: id
				}, ret => {
					ret = ret.data;
					ft.authData = ret;
				});

			},
			remove: (auth, ft) => {
				//删除
				this.confirmationService.confirm({
					header: '删除提示',
					message: '您确定需要删除此记录?',
					accept: () => {
						var m = ft.listObj.selectedObj;
						this.crudService.DeleteData(
							auth.item.authUrl, m["id"],
							ret => {
								ft.msgs.push({
									severity: 'success',
									summary: '提示',
									detail: "删除成功"
								});
								var index = this.utilService.GetArrayIndex(ft.listObj.listData, "id", m["id"]);
								ft.listObj.listData.splice(index, 1);
								ft.listObj.selectedObj = {};
								this.RowSeleted({});
							});
					}
				});
			},
			app: (auth, ft) => {
				//提交
				this.handerData('提交', auth, ft, '提交成功', '1');
			},
			auth: (auth, ft) => {
				//审核
				this.handerData('审核', auth, ft, '审核通过', '2');
			},
			reject: (auth, ft) => {
				//否决
				this.remark = "";
				this.display = true;
				this.tempFunc = () => {
					var param = {
						id: ft.listObj.selectedObj.id,
						remark: this.remark
					}
					this.sucessBack(auth, ft, '否决成功', '99', param);
				};
			}
		};
	};

	private handerData(handler, auth, ft, msg, status) {
		this.confirmationService.confirm({
			header: handler + '提示',
			message: '您确定' + handler + '此表单?',
			accept: () => {
				var id = ft.listObj.selectedObj.id;
				var param = {
					id: id
				};
				this.sucessBack(auth, ft, msg, status, param);
			}
		});
	};
	private sucessBack(auth, ft, msg, status, param) {
		this.crudService.AppData(
			auth.item.authUrl, param,
			ret => {
				ft.msgs.push({
					severity: 'success',
					summary: '提示',
					detail: msg
				});
				if(ret.data >= 1) {
					ft.listObj.selectedObj.status = this.utilService.GetStatus(status);
					this.RowSeleted(ft.listObj.selectedObj);
				}
			});
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