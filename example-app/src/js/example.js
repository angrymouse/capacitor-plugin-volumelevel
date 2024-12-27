import { VolumeLevel } from 'capacitor-plugin-volumelevel';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    VolumeLevel.echo({ value: inputValue })
}
