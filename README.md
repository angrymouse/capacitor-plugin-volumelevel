# capacitor-plugin-volumelevel

Capacitor plugin that allows to read current device's volume

## Install

```bash
npm install capacitor-plugin-volumelevel
npx cap sync
```

## API

<docgen-index>

* [`getVolume()`](#getvolume)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### getVolume()

```typescript
getVolume() => Promise<GetVolumeResult>
```

**Returns:** <code>Promise&lt;<a href="#getvolumeresult">GetVolumeResult</a>&gt;</code>

--------------------


### Interfaces


#### GetVolumeResult

| Prop                   | Type                |
| ---------------------- | ------------------- |
| **`volume`**           | <code>number</code> |
| **`maxVolume`**        | <code>number</code> |
| **`volumePercentage`** | <code>number</code> |

</docgen-api>
