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
export class AuthOrgService {

	constructor(@Inject(STARWARS_BASE_URL) private starwarUrl,
		private http: Http,
		private requestService: RequestService
	) {}
	GetAuthOrgList(bk) {
		this.requestService.Get('auth/define/list.json', bk);
	};
	GetOrgList(param, bk) {
		this.requestService.Post('org/list.json', param, bk);
	};
	GetOrgAuth() {
		return this.http.get(`${this.starwarUrl}/org/auth.json`)
			.map(res => res.json());
	};
}