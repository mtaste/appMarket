import {
	UserComponent
} from "./user.component";
import {
	UserLoginComponent
} from "./login/user-login.component";
import {
	RouterModule
} from "@angular/router";
const routes = [{
	path: '',
	component: UserComponent,
	children: [{
		path: ""
	}, {
		path: "login",
		component: UserLoginComponent
	}]
}];
export default RouterModule.forChild(routes);