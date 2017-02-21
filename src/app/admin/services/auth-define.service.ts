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
export class AuthDefineService {

	constructor(
		@Inject(STARWARS_BASE_URL) private starwarUrl,
		private http: Http,
		private requestService: RequestService
	) {};
	GetAuthDefineList(bk) {
		this.requestService.Get('auth/define/list.json', bk);
	};
	//保存数据
	SaveData(param, bk) {
		this.requestService.Post('auth/define/save.json', param, bk);
	};
	//删除数据
	DeleteData(id, bk) {
		this.requestService.Post('auth/define/remove.json', {
			id: id
		}, bk);
	};
}