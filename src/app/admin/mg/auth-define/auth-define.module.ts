import {
	NgModule
} from "@angular/core";
import {
	CommonModule
} from "@angular/common";
import {
	AuthDefineComponent
} from "./auth-define.component";
import routes from './auth-define.routes';
@NgModule({
	imports: [CommonModule, routes],
	declarations: [AuthDefineComponent]
})
export default class AuthDefineModule {}