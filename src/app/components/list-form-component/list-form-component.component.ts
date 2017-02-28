import {
	Component,
	OnInit,
	Input,
	Output,
	EventEmitter
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
	FormBuilder,
	FormGroup,
	Validators,
	FormControl,
	AuthService,
	CrudService,
	UtilService
} from '../index';
@Component({
	selector: 'app-list-form-component',
	templateUrl: './list-form-component.component.html',
	styleUrls: ['./list-form-component.component.css']
})
export class ListFormComponentComponent implements OnInit {
	//提示信息
	private msgs: Message[] = [];
	private step = 1;
	//详情
	private infoFuncs: MenuItem[];
	private listObj = {};
	private formObj = {};
	private authData = [];
	@Input() menus = {};
	@Input() title = "";
	@Input() list = {};
	@Input() form = [];
	@Output() initEvent: EventEmitter < any > = new EventEmitter();
	@Output() rowSeleted: EventEmitter < any > = new EventEmitter();
	constructor(
		private router: ActivatedRoute,
		private authService: AuthService,
		private fb: FormBuilder,
		private utilService: UtilService,
		private crudService: CrudService
	) {

	};

	ngOnInit() {
		//定义信息操作菜单
		this.infoFuncs = [{
			label: '返回',
			icon: 'fa-backward',
			command: () => {
				this.step = 1;
			}
		}];
	};

	onSubmit(param) {
		//保存数据
		var menu = this.listObj['funcObj']['t_menu'];
		this.crudService.SaveData(menu["authUrl"], param, (ret) => {
			this.msgs.push({
				severity: 'success',
				summary: '提示',
				detail: '保存成功'
			});
			this.step = 1;
			var value = this.formObj['formModel']['value'];
			if(!value["id"]) {
				value["id"] = ret.data;
				var m = this.utilService.CopyObj(value, value);
				m['status'] = this.utilService.GetStatus('0');
				this.listObj['listData'].unshift(m);
			} else {
				for(var k in value) {
					this.listObj['selectedObj'][k] && (this.listObj['selectedObj'][k] = value[k]);
				}
				this.listObj['selectedObj']['status'] = this.utilService.GetStatus('0');
			}
		});
	};
	ListInit(e) {
		this.listObj = e;
		this.initEvent.emit(this);
	};
	FormInit(e) {
		this.formObj = e;
	};
	SelectedRow(e) {
		this.rowSeleted.emit(e);
	};
}