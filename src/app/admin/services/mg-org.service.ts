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
}