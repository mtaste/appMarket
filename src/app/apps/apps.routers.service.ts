import {
	Injectable,
	Inject
} from '@angular/core';
import {
	CanActivate,
	Router,
	ActivatedRouteSnapshot,
	RouterStateSnapshot
} from '@angular/router';
import {
	STARWARS_BASE_URL
} from "../shared/constance.service";
import {
	Http
} from "@angular/http";
import "rxjs/add/operator/map";
import "rxjs/add/operator/switchMap";
@Injectable()
export class AppsRouterService {
	constructor(
			private router: Router,
			private http: Http,
			@Inject(STARWARS_BASE_URL) private starwarUrl
		) {}
		//register routers 
	RegisterRouter(data) {
			var rs = this.getAllRouters();
			for(var i in data) {
				var t = data[i];
				var path = t["id"].replace("/apps/main", "apps/run");
				if(rs[path] != "Y") {
					t["path"] = path;
					this.router.config.push(t);
				}
			}
		}
		//get all routers 
	private getAllRouters() {
			var ret = {};
			var c = this.router.config;
			for(var i in c) {
				var t = c[i];
				ret[t.path] = "Y";
			}
			return ret;
		}
		// get trans url
	private getTransUrl(url) {
			var path = url.replace("/apps/main", "apps/run");
			var rs = this.getAllRouters();
			if(rs[path] == "Y") {
				return path;
			} else {
				return "";
			}
		}
		//get run app register
	private runAppRegister(url) {
			var ret = new Promise < Boolean > ((resolve, reject) => {
				resolve(true);
				//查找App路径,并注册跳转
				var ids = url.replace("apps/run", "/apps/main").split("/");
				var id = ids[ids.length - 1];
				var askUrl = `${this.starwarUrl}/apps/routers.json`;
				askUrl = askUrl.replace("routers", id);
				this.http.get(askUrl)
					.map(res => res.json())
					.subscribe((ret) => {
						var data = [ret];
						this.RegisterRouter(data);
						//跳转
						this.RunApp({
							url: url
						});
					});
			});
			return ret;
		}
		// get apps list 
	GetAppsList() {
			this.http.get(`${this.starwarUrl}/apps/routers.json`)
				.map(res => res.json())
				.subscribe((data) => {
					//this.RegisterRouter(data);
				});
		}
		// runing app
	RunApp(state) {
		var url = this.getTransUrl(state.url);
		if(url) {
			this.router.navigateByUrl(url, {
				skipLocationChange: true
			});
			return new Promise < Boolean > ((resolve, reject) => {
				resolve(true);
			});;
		} else {
			//先注册路由,再跳转
			return this.runAppRegister(state.url);
		}
	}
}
@Injectable()
export class AppsRouterActivate implements CanActivate {
	constructor(
		private router: Router,
		private appsRouterService: AppsRouterService
	) {}
	canActivate(next: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
		var ret = this.appsRouterService.RunApp(state);
		return ret;
	}
}