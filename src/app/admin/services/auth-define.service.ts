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
export class AuthDefineService {

	constructor(@Inject(STARWARS_BASE_URL) private starwarUrl,
		private http: Http
	) {}
	GetAuthDefineList() {
		return this.http.get(`${this.starwarUrl}/auth/define.json`)
			.map(res => res.json())
	}
}