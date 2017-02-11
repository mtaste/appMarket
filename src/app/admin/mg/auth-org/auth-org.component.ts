import {
	Component,
	OnInit
} from '@angular/core';
import {
	TreeNode,
	MenuItem,
	ConfirmationService,
	Message
} from 'primeng/primeng';
import {
	AuthOrgService,
	UtilService,
	FormBuilder,
	FormGroup,
	Validators,
	FormControl
} from '../index';

@Component({
	selector: 'app-auth-org',
	templateUrl: './auth-org.component.html',
	styleUrls: ['./auth-org.component.css']
})
export class AuthOrgComponent implements OnInit {
	private trees: TreeNode[];
	private selectedNode: TreeNode;
	private orgItems: MenuItem[];
	private authItems: MenuItem[];
	private msgs: Message[] = [];
	constructor(
		private authOrgService: AuthOrgService,
		private utilService: UtilService,
		private fb: FormBuilder,
		private confirmationService: ConfirmationService
	) {};
	ngOnInit() {
		//初始化权限表单
		this.authForm = this.fb.group({
			'id': new FormControl(''),
			'name': new FormControl('', Validators.required),
			'parentId': new FormControl(''),
			'parentName': new FormControl({
				value: "",
				disabled: true
			})
		});
		//获取定义的数据
		this.authOrgService.GetAuthOrgList().subscribe((ret) => {
			var data = this.utilService.TransData(ret, "id", "parentId", "children");
			this.trees = < TreeNode[] > data;
		});
		//定义菜单栏
		this.orgItems = [{
			label: '新增',
			icon: 'fa-plus',
			command: () => {
				var m = this.selectedNode;
				this.authForm.setValue({
					id: "",
					name: "",
					parentId: m["id"],
					parentName: m["name"]
				});
			}
		}, {
			label: '删除',
			icon: 'fa-remove',
			command: () => {
				this.confirmationService.confirm({
					header: '删除提示',
					message: '您确定需要删除此记录?',
					accept: () => {
						console.log("Yes");
					}
				});
			}
		}];
		//定义权限菜单栏
		this.authItems = [{
			label: '保存',
			icon: 'fa-save',
			command: () => {
				// TODO
				console.log("save");
			}
		}];

	};
	//select tree
	NodeSelect(e) {
		var m = this.utilService.CopyObj(this.authForm.value, e.node);
		e.node.parent && (m["parentName"] = e.node.parent.name);
		!e.node.parent && (m["parentName"] = "0");
		this.authForm.setValue(m);
	};
	//Form
	authForm: FormGroup;
	submitted: boolean;
	onSubmit(value: string) {
		this.submitted = true;
		//成功增加后,提示信息,以及动态增加
		this.msgs.push({
			severity: 'success',
			summary: '提示',
			detail: '操作成功!'
		});
		var m = this.utilService.CopyObj(value, value);
		!this.selectedNode.children && (this.selectedNode.children = []);
		this.selectedNode.children.push(m);
	}
	get display() {
		return JSON.stringify(this.authForm.value);
	}
}