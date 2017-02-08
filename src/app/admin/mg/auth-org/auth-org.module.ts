import {
	NgModule
} from "@angular/core";
import {
	CommonModule
} from "@angular/common";
import {
	AuthOrgComponent
} from "./auth-org.component";
import routes from './auth-org.routes';
@NgModule({
	imports: [CommonModule, routes],
	declarations: [AuthOrgComponent]
})
export default class AuthOrgModule {}