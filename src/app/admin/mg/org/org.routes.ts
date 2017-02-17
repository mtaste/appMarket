import {
	OrgRegisterComponent
} from "./register/org-register.component";
import {
	OrgAuthComponent
} from "./auth/org-auth.component";
import {
	RouterModule
} from "@angular/router";
const routes = [{
	path: 'register',
	component: OrgRegisterComponent
}, {
	path: 'auth',
	component: OrgAuthComponent
}];
export default RouterModule.forChild(routes);