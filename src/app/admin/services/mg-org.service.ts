import {
	Injectable,
	Inject
} from '@angular/core';
import {
	STARWARS_BASE_URL
} from "../../shared/constance.service";

import {
	Http
} from "@angular/http";
import "rxjs/add/operator/map";
import "rxjs/add/operator/switchMap";

@Injectable()
export class MgOrgService {

	constructor(@Inject(STARWARS_BASE_URL) private starwarUrl,
		private http: Http
	) {};
	//获取列表信息
	GetBillList() {
		return this.http.get(`${this.starwarUrl}/org/bill/list.json`)
			.map(res => res.json());
	};
	//获取机构权限列表
	GetAuthList() {
		return this.http.get(`${this.starwarUrl}/org/auth/list.json`)
			.map(res => res.json());
	};
	//获取机构选择权限
	GetBillOrgAuth() {
		return this.http.get(`${this.starwarUrl}/org/bill/auth.json`)
			.map(res => res.json());
	};
	//获取机构权限
	GetOrgAuth() {
		return this.http.get(`${this.starwarUrl}/org/authList.json`)
			.map(res => res.json());
	};
	//获取机构权限
	GetOrgList() {
		return this.http.get(`${this.starwarUrl}/org/list.json`)
			.map(res => res.json());
	};
}