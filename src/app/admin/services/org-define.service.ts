import {
	Injectable,
	Inject
} from '@angular/core';
import {
	STARWARS_BASE_URL
} from "../../shared/constance.service";
import {
	RequestService
} from "../../shared/request.service";
import {
	Http
} from "@angular/http";
import "rxjs/add/operator/map";
import "rxjs/add/operator/switchMap";

@Injectable()
export class OrgDefineService {

	constructor(@Inject(STARWARS_BASE_URL) private starwarUrl,
		private http: Http,
		private requestService: RequestService
	) {};
	//获取部门列表
	GetOrgDefine(bk) {
		this.requestService.Post('org/dept/list.json', {}, bk);
	};
	//获取职务列表
	GetJobList(param, bk) {
		this.requestService.Post('org/dept/role/list.json', param, bk);
	};
	//获取机构所有权限列表
	GetOrgAuthList() {
		return this.http.get(`${this.starwarUrl}/org/authList.json`)
			.map(res => res.json());
	};
	//获取职务权限
	GetOrgJobAuth() {
		return this.http.get(`${this.starwarUrl}/org/jobAuth.json`)
			.map(res => res.json());
	};
	//获取用户列表信息
	GetDepUserList() {
		return this.http.get(`${this.starwarUrl}/org/orgUser.json`)
			.map(res => res.json());
	};
	//获取可以选择用户列表信息
	GetUserList() {
		return this.http.get(`${this.starwarUrl}/org/userList.json`)
			.map(res => res.json());
	};
}