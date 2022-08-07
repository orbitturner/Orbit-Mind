# References

https://notiz.dev/

https://blog.bitsrc.io/10-useful-angular-features-youve-probably-never-used-e9e33f5c35a7

___

## HMR WITH NG
https://www.freakyjolly.com/angular-hot-module-replacement-technique-tutorial/


https://medium.com/echohub/implementation-of-hmr-hot-module-replacement-to-angular-project-f7bca523bd16

___
## **VALUE CHANGE BINDING IN DIFFERENT HTML THINGS**
```html
    <select class="form-select rounded-start-0" placeholder="Select an option" [(ngModel)]="selectedPole" (ngModelChange)="submit()">
	    <option disabled selected>Pôle Concerné...</option>
	    <option *ngFor="let pole of qcPolesList" value="{{pole}}">{{pole}}</option>
    </select>
```

___
## **Serve multiple Angular apps from single Nginx server in Development & Production mode with Docker**

https://medium.com/@kaushiksamanta23/serve-multiple-angular-apps-from-single-nginx-server-in-development-production-mode-with-docker-ae8d53b43283

___
