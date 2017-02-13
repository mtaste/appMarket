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
export class AuthOrgService {

	constructor(@Inject(STARWARS_BASE_URL) private starwarUrl,
		private http: Http
	) {}
	GetAuthOrgList() {
		return this.http.get(`${this.starwarUrl}/auth/define.json`)
			.map(res => res.json());
	};
	GetOrgList() {
		return this.http.get(`${this.starwarUrl}/org/list.json`)
			.map(res => res.json());
	};
	GetOrgAuth() {
		return this.http.get(`${this.starwarUrl}/org/auth.json`)
			.map(res => res.json());
	}
}