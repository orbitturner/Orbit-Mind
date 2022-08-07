## UPPY UPLOAD EXAMPLE

```js
  const { Dashboard } = Uppy;
  const uppy = new Uppy.Core({
    debug: true,
    autoProceed: false,
    restrictions: {
      maxFileSize: 2000000,
      maxNumberOfFiles: 1,
      minNumberOfFiles: 1,
      allowedFileTypes: ['image/*'],
    }
  });
  uppy.use(Dashboard, {
    trigger: '.UppyModalOpenerBtn',
    inline: true,
    target: '.DashboardContainer',
    showProgressDetails: true,
    note: 'Selectionnez une seule Image ! 2MB Max',
    height: 370,
    metaFields: [
      { id: 'name', name: 'Name', placeholder: 'file name' },
      { id: 'caption', name: 'Caption', placeholder: 'describe what the image is about' }
    ],
    browserBackButtonClose: false,
    doneButtonHandler: () => {
      this.uppy.reset()
      // this.requestCloseModal()
    },
    closeAfterFinish: false,
  });
  // uppy.use(Uppy.GoogleDrive, { target: Dashboard, companionUrl: 'https://companion.uppy.io' })
  // uppy.use(Uppy.Dropbox, { target: Dashboard, companionUrl: 'https://companion.uppy.io' })
  // uppy.use(Uppy.Box, { target: Dashboard, companionUrl: 'https://companion.uppy.io' })
  // uppy.use(Uppy.Instagram, { target: Dashboard, companionUrl: 'https://companion.uppy.io' })
  // uppy.use(Uppy.Facebook, { target: Dashboard, companionUrl: 'https://companion.uppy.io' })
  // uppy.use(Uppy.OneDrive, { target: Dashboard, companionUrl: 'https://companion.uppy.io' })
  uppy.use(Uppy.Webcam, { target: Dashboard })
  uppy.use(Uppy.ImageEditor, { target: Dashboard })
  // uppy.use(Uppy.Tus, { endpoint: 'https://tusd.tusdemo.net/files/' })
  uppy.use(Uppy.DropTarget, {target: document.body })
  uppy.use(Uppy.GoldenRetriever);
  uppy.use(Uppy.XHRUpload, {
    endpoint: '-----',
  });
```

___
## JS IMPORTANT NATIVE FUNCTION

https://www.w3schools.com/jsref/jsref_isfinite.asp#:~:text=The%20isFinite()%20function%20determines


___
## JS BIG O & Algo COURSES
Big O' : https://youtu.be/JgWm6sQwS_I

Sort : https://youtu.be/RGuJga2Gl_k

Big 'O : https://youtu.be/itn09C2ZB9Y

DataStructure : https://youtu.be/41GSinwoMYA


___
 ## [Web Tools Weekly #451 - CSS Tools, Databases/JSON, SVG](https://mailchi.mp/webtoolsweekly/web-tools-451)

Removing blanks from an array, CSS & HTML Tools, JSON & Databases, Media Tools (SVG, Video, etc).


___


