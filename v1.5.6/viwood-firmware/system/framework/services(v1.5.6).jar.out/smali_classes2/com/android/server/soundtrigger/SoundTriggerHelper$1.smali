.class public abstract synthetic Lcom/android/server/soundtrigger/SoundTriggerHelper$1;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$soundtrigger$DeviceStateHandler$SoundTriggerDeviceState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1213
    invoke-static {}, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->values()[Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$1;->$SwitchMap$com$android$server$soundtrigger$DeviceStateHandler$SoundTriggerDeviceState:[I

    :try_start_0
    sget-object v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->DISABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$1;->$SwitchMap$com$android$server$soundtrigger$DeviceStateHandler$SoundTriggerDeviceState:[I

    sget-object v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->CRITICAL:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$1;->$SwitchMap$com$android$server$soundtrigger$DeviceStateHandler$SoundTriggerDeviceState:[I

    sget-object v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->ENABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
